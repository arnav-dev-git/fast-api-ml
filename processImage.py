import os
import datetime
import numpy as np
from glob import glob
from PIL import Image
import matplotlib.pyplot as plt
import urllib.request

import tensorflow as tf
from tensorflow import keras

import boto3
import json
from io import BytesIO

import os
from dotenv import load_dotenv
load_dotenv()

SAVED_MODEL_FILE = 'img_model/'
TFLITE_MODEL_FILE = 'zero-dce.tflite'


AWS_ACCESS_KEY_ID = os.environ.get("AWS_ACCESS_KEY_ID")
AWS_SECRET_ACCESS_KEY = os.environ.get("AWS_SECRET_ACCESS_KEY")
SPACE_NAME = os.environ.get('SPACE_NAME')

# Load the save model
model = keras.models.load_model(SAVED_MODEL_FILE)

# Convert the save model into tflite
converter = tf.lite.TFLiteConverter.from_keras_model(model)
tflite_model = converter.convert()
open(TFLITE_MODEL_FILE, 'wb').write(tflite_model)

print('Model size is %f MBs.' % (len(tflite_model) / 1024 / 1024.0))

interpreter = tf.lite.Interpreter(model_path=TFLITE_MODEL_FILE)
input_details = interpreter.get_input_details()
output_details = interpreter.get_output_details()

print("Input Shape:", input_details[0]['shape'])
print("Input Type:", input_details[0]['dtype'])
print("Output Shape:", output_details[0]['shape'])
print("Output Type:", output_details[0]['dtype'])


# test_low_light_images = sorted(glob("./lol_dataset/eval15/low/*"))
# print('Total test images {}'.format(len(test_low_light_images)))


# Image Pre Processing
IMG_HEIGHT = 600
IMG_WIDTH = 400


def preprocess_image(image_path):
    original_image = Image.open(image_path)
    width, height = original_image.size
    preprocessed_image = original_image.resize(
        (
            IMG_HEIGHT,
            IMG_WIDTH
        ),
        Image.ANTIALIAS)
    preprocessed_image = tf.keras.preprocessing.image.img_to_array(
        preprocessed_image)
    preprocessed_image = preprocessed_image.astype('float32') / 255.0
    preprocessed_image = np.expand_dims(preprocessed_image, axis=0)

    return original_image, preprocessed_image


def infer_tflite(image):
    interpreter = tf.lite.Interpreter(model_path=TFLITE_MODEL_FILE)
    input_index = interpreter.get_input_details()[0]["index"]
    output_index = interpreter.get_output_details()[0]["index"]

    interpreter.allocate_tensors()
    interpreter.set_tensor(input_index, image)
    interpreter.invoke()
    raw_prediction = interpreter.tensor(output_index)
    output_image = raw_prediction()

    output_image = output_image.squeeze() * 255.0
    output_image = output_image.clip(0, 255)
    output_image = output_image.reshape(
        (np.shape(output_image)[0], np.shape(output_image)[1], 3)
    )
    output_image = Image.fromarray(np.uint8(output_image))
    return output_image


def plot_results(images, titles, figure_size=(12, 12)):
    fig = plt.figure(figsize=figure_size)
    for i in range(len(images)):
        fig.add_subplot(1, len(images), i + 1).set_title(titles[i])
        _ = plt.imshow(images[i])
        plt.axis("off")
    plt.show()


def upload_image_to_space(image, image_name):
    # Connect to DigitalOcean Spaces using boto3 library

    s3 = boto3.resource('s3',
                        region_name='sgp1',
                        endpoint_url='https://sgp1.digitaloceanspaces.com',
                        aws_access_key_id=AWS_ACCESS_KEY_ID,
                        aws_secret_access_key=AWS_SECRET_ACCESS_KEY)

    # Get the Space object
    space = s3.Bucket(SPACE_NAME)

    # Save the PIL Image as bytes
    buffer = BytesIO()
    image.save(buffer, format='JPEG')
    image_bytes = buffer.getvalue()

    # Upload the image file to the Space
    space.put_object(Key=image_name, Body=image_bytes, ACL='public-read')

    # Print success message
    print(f"Image uploaded to Space {SPACE_NAME} successfully!")

# for image_path in test_low_light_images:
#     original_image, preprocessed_image = preprocess_image(image_path)
#     output_image = infer_tflite(preprocessed_image)
#     plot_results(
#         [original_image, output_image],
#         ["Original Image", "Enhanced Image"],
#         (20, 12),
#     )


def processImage(_model, image_src, output_name):
    print("OP Name: ", output_name)
    start_time = datetime.datetime.now()
    global model
    model = _model

    image_path = f"https://image-auto-enhance-brightness-ml.sgp1.cdn.digitaloceanspaces.com/{image_src}"
    # image_path = image_src

    urllib.request.urlretrieve(image_path, "img.png")
    img = Image.open(rb"img.png")

    original_image, preprocessed_image = preprocess_image("./img.png")
    output_image = infer_tflite(preprocessed_image)
    upload_image_to_space(output_image, output_name)


    # plot_results(
    #     [original_image, output_image],
    #     ["Original Image", "Enhanced Image"],
    #     (20, 12),
    # )

    end_time = datetime.datetime.now()
    time_diff = end_time - start_time
    print("Time Taken (seconds): ", time_diff.total_seconds())

    return {"filename": str(output_name)}
