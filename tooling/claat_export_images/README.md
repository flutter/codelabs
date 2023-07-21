# CLAAT Image exporter, Dart version

A tool to export the images for a CLAAT codelab. This tool uses the Google Docs API to 
retrieve the images embedded in a Google Doc. This tool is being used to slim down the 
images attached to Google Codelabs as a Thing (CLAAT) gDocs that are collectively too 
large for the Google Docs HTML export API.

## Install dependencies

```shell
dart pub get
```

## Enabling API Access

Follow the instructions in the Python Quickstart section on [setting up your environment][].
You will wind up with a client secret JSON file that this script requires to work.

  [setting up your environment]: https://developers.google.com/docs/api/quickstart/python#set_up_your_environment
 

## Run

After following the quickstart setup instructions, run the code:

```shell
dart bin/claat_export_images.dart -s client_secret.json -d $CLAAT_GOOGLE_DOC_ID
```