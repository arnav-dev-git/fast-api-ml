import requests

url = "http://127.0.0.1:8000/process-image"
payload = {
    "image_src": "https://image-auto-enhance-brightness-ml.sgp1.digitaloceanspaces.com/SAMPLE%20(4).jpg",
    "output_name": "xyab123rc"
}
headers = {
    "Content-Type": "application/json"
}
response = requests.put(url, json=payload, headers=headers)

print(response.status_code)
print(response.json())