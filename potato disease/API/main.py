from fastapi import FastAPI, File, UploadFile, HTTPException
import numpy as np
from io import BytesIO
from PIL import Image
import tensorflow as tf
import joblib
import uvicorn
import os
import threading
import time

app = FastAPI()

CLASS_NAMES = ['Potato___Early_blight', 'Potato___Late_blight', 'Potato___healthy']

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
model_path = os.path.join(BASE_DIR, "..", "saved_models")
models = {}

def read_file_as_image(data) -> np.ndarray:
    try:
        image = Image.open(BytesIO(data)).convert("RGB")
        image = image.resize((256, 256))
        image = np.array(image) / 255.0
        return np.expand_dims(image, axis=0)
    except Exception as e:
        raise ValueError(f"Error processing image: {str(e)}")


def load_model(version: str):
    try:
        if version not in models:
            model_file = os.path.join(model_path, version, "model.pkl")
            if os.path.exists(model_file):
                models[version] = joblib.load(model_file)
                print(f"Loaded model version: {version}")
            else:
                raise ValueError(f"Model version '{version}' not found")
        return models[version]
    except Exception as e:
        raise ValueError(f"Failed to load model: {str(e)}")

def monitor_model_updates(interval=60):
    while True:
        for version in ["Beta", "Production"]:
            try:
                load_model(version)
            except Exception as e:
                print(f"Error loading model version '{version}': {str(e)}")
        time.sleep(interval)

threading.Thread(target=monitor_model_updates, daemon=True).start()

@app.post("/predict/{version}")
async def predict(version: str, file: UploadFile = File(...)):
    try:
        contents = await file.read()
        image = read_file_as_image(contents)
        if image is None or image.size == 0:
            raise HTTPException(status_code=400, detail="Uploaded file is not a valid image.")
    except Exception as e:
        raise HTTPException(status_code=400, detail=f"Error reading file: {str(e)}")

    try:
        model = load_model(version)
    except ValueError as e:
        raise HTTPException(status_code=404, detail=str(e))

    try:
        predictions = model.predict(image)
        predicted_class = CLASS_NAMES[np.argmax(predictions)]
        confidence = round(np.max(predictions), 2)

        return {
            "class": predicted_class,
            "confidence": float(confidence)
        }
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Prediction error: {str(e)}")

if __name__ == '__main__':
    uvicorn.run(app, host='0.0.0.0', port=8000)
