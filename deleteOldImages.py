import boto3
import botocore
import time
from datetime import datetime, timedelta, timezone

import os
from dotenv import load_dotenv
load_dotenv()

# DigitalOcean Space credentials
ACCESS_KEY = os.environ.get("AWS_ACCESS_KEY_ID")
SECRET_KEY = os.environ.get("AWS_SECRET_ACCESS_KEY")
SPACE_NAME = space_name = os.environ.get('SPACE_NAME')
REGION_NAME = "sgp1"

# Image file extensions to delete
IMAGE_EXTENSIONS = ["jpg", "jpeg", "png", "gif"]

session = boto3.session.Session()
s3 = session.client('s3',
                        config=botocore.config.Config(s3={'addressing_style': 'virtual'}),
                        region_name=REGION_NAME,                    
                        endpoint_url='https://sgp1.digitaloceanspaces.com',
                        aws_access_key_id=ACCESS_KEY,
                        aws_secret_access_key=SECRET_KEY)

print("S3 Connected!")

# Function to delete objects in the Space that are more than 15 minutes old
def delete_old_images():
    # Get the current time in UTC timezone
    current_time_utc = datetime.now(timezone.utc)

    # Set the time threshold to 15 minutes ago
    time_threshold = current_time_utc - timedelta(minutes=15)

    # List all objects in the DigitalOcean Space
    response = s3.list_objects_v2(Bucket=SPACE_NAME)

    # Loop through each object in the Space
    for obj in response.get("Contents", []):
        # Get the object key and last modified time in UTC timezone
        obj_key = obj.get("Key")
        last_modified_utc = obj.get("LastModified").replace(tzinfo=timezone.utc)

        # Check if the object is an image and if it is older than the time threshold
        if obj_key.endswith((".jpg", ".jpeg", ".png", ".gif")) and last_modified_utc < time_threshold:
            # Delete the object
            s3.delete_object(Bucket=SPACE_NAME, Key=obj_key)
            print(f"Deleted object: {obj_key}")



while True:
    delete_old_images()
    time.sleep(60 * 5)


# run => nohup python3 deleteOldImages