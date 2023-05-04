from fastapi import Form, File, UploadFile, Request, FastAPI
from fastapi.middleware.cors import CORSMiddleware
from typing import Union, List
from fastapi import FastAPI
from io import BytesIO
import tensorflow as tf
from tensorflow import keras
# from starlette.requests import Request
# from PIL import Image

import os
from dotenv import load_dotenv
load_dotenv()

from pydantic import BaseModel

from processImage import processImage
from uploadImage import uploadImage

app = FastAPI()

# class InputImage(BaseModel):
    # input_image = None

origins = ['*']

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
) 


model = keras.models.load_model("./img_model")

space_name = os.getenv('SPACE_NAME')

@app.get("/")
def read_root():
    return {"Hello": "World"}

region_url='sgp1.digitaloceanspaces.com'

@app.get("/test") 
def print_test():
    return {"Test": "Hello World!"}

@app.post("/process-image")
async def predict(request: Request):
    body = await request.json()
    print(body, body["image_src"])
    return processImage(_model=model, image_src=body["image_src"], output_name=body['output_name'])

@app.post("/upload-image")
async def create_upload_file(image: UploadFile = File(...)):
    return await uploadImage(image)

@app.get("/items/{item_id}")
def read_item(item_id: int, q: Union[str, None] = None):
    return {"item_id": item_id, "q": q}



# PassCode1234ML_project
# uvicorn main:app