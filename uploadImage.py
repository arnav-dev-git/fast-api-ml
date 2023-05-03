import boto3

import os
from dotenv import load_dotenv
load_dotenv()

AWS_ACCESS_KEY_ID = os.environ.get("AWS_ACCESS_KEY_ID")
AWS_SECRET_ACCESS_KEY = os.environ.get("AWS_SECRET_ACCESS_KEY")
SPACE_NAME = space_name = os.environ.get('SPACE_NAME')

s3_client = boto3.client(
    's3',
    region_name='sgp1',
    endpoint_url='https://sgp1.digitaloceanspaces.com',
    aws_access_key_id=AWS_ACCESS_KEY_ID,
    aws_secret_access_key=AWS_SECRET_ACCESS_KEY
)

# space_name = "image-auto-enhance-brightness-ml"

async def uploadImage(file):
    try:
        s3_client.upload_fileobj(
            file.file,
            space_name,
            file.filename,
            ExtraArgs={
                'ACL': 'public-read',
                'ContentType': file.content_type
            }
        )
        return {"filename": file.filename}
    except:
        return {"error": "Failed to upload file to DigitalOcean Spaces"}
