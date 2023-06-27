# CLAAT Image exporter, Python version

A tool to export the images for a CLAAT codelab.

## Install dependencies

```shell
pip install -r requirements.txt
```

## Enabling API Access

Follow the instructions in the Python Quickstart section on [setting up your environment][].
You will wind up with a client secret JSON file that this script requires to work.

  [setting up your environment]: https://developers.google.com/docs/api/quickstart/python#set_up_your_environment
 

## Run

After following the quickstart setup instructions, run the code:

```shell
python3 claat_export_images.py -s client_secret.json -d 1389diNFkkLUQUVIpJ1B2XGdk8wfsPNJOGeVYZWlEhpk
```