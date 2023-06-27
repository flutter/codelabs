from __future__ import print_function

from os import mkdir
import os.path
import io
from urllib.parse import urlparse
import argparse

from google.auth.transport.requests import Request
from google.oauth2.credentials import Credentials
from google_auth_oauthlib.flow import InstalledAppFlow
from googleapiclient.discovery import build
from googleapiclient.errors import HttpError
import requests
from PIL import Image


SCOPES = ['https://www.googleapis.com/auth/documents.readonly']

def main():

    parser = argparse.ArgumentParser(
        description="Download the images for a CLAAT codelab",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument('-s', '--client-secrets', 
                        help='The path to the client_secrets.json file',
                        required=True)
    parser.add_argument('-d', '--doc-id', 
                        help='The document ID to export the images of',
                        required=True)
    args = parser.parse_args()

    creds = None
    # The file token.json stores the user's access and refresh tokens, and is
    # created automatically when the authorization flow completes for the first
    # time.
    if os.path.exists('token.json'):
        creds = Credentials.from_authorized_user_file('token.json', SCOPES)
    # If there are no (valid) credentials available, let the user log in.
    if not creds or not creds.valid:
        if creds and creds.expired and creds.refresh_token:
            creds.refresh(Request())
        else:
            flow = InstalledAppFlow.from_client_secrets_file(
                args.client_secrets, SCOPES)
            creds = flow.run_local_server(port=0)
        # Save the credentials for the next run
        with open('token.json', 'w') as token:
            token.write(creds.to_json())

    try:
        service = build('docs', 'v1', credentials=creds)

        # Retrieve the documents contents from the Docs service.
        document = service.documents().get(documentId=args.doc_id).execute()

        # Somewhere to store the images
        mkdir('img')
        img_count = 0

        # Retrieve images and write them out, with appropriate image format suffix
        for key in document.get('inlineObjects'):
            uri = document.get('inlineObjects').get(key).get('inlineObjectProperties').get('embeddedObject').get('imageProperties').get('contentUri')
            url = urlparse(uri)
            req = requests.get(uri)
            img = Image.open(io.BytesIO(req.content))
            with open('img%s.%s' % (url.path, img.format.lower()), 'wb') as binary_file:
                binary_file.write(req.content)
                img_count += 1

        print('Wrote %d images to img/' % (img_count))
            

    except HttpError as err:
        print(err)


if __name__ == '__main__':
    main()