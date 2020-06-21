import hashlib
import requests
import boto3

s3_rsc = boto3.resource('s3')
FIGGY_BUCKET = 'figgy-website'


def get_hash(filename: str):
    with open(filename, "rb") as f:
        bytes = f.read()  # read entire file as bytes
        readable_hash = hashlib.sha256(bytes).hexdigest();
        print(readable_hash)


def download_file(remote_url: str, local_path: str):
    r = requests.get(remote_url, allow_redirects=True)
    with open(local_path, 'wb') as file:
        file.write(r.content)


def create_bottle(version: str, architecture: str):
    new_obj = s3_rsc.Object(FIGGY_BUCKET, f'bottles/figgy-{version}.{architecture}.bottle.tar.gz')
    result = new_obj.copy_from(CopySource=f'releases/cli/{version}/darwin/figgy.tar.gz')
    print(f'Bottle create result: {result}')
