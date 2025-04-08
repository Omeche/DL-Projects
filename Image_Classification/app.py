import streamlit as st
from PIL import Image
import tensorflow as tf
import numpy as np
from keras.layers import TFSMLayer

# Load the model from SavedModel directory using TFSMLayer
model = TFSMLayer("C:/Users/HP/Image_Classification", call_endpoint="serving_default")

# Class index to character mapping
character_mapping = {
    0: 'a', 1: 'b', 2: 'c', 3: 'd', 4: 'e', 5: 'f', 6: 'g',
    7: 'h', 8: 'i', 9: 'j', 10: 'k', 11: 'l', 12: 'm', 13: 'n',
    14: 'o', 15: 'p', 16: 'q', 17: 'r', 18: 's', 19: 't', 20: 'u',
    21: 'v', 22: 'w', 23: 'x', 24: 'y', 25: 'z'
}
# App Title
st.set_page_config(page_title="Character Recognition App", layout="centered")
st.markdown(
    "<h1 style='text-align: center; color: #4B8BBE;'>English Character Recognition</h1>",
    unsafe_allow_html=True,
)
st.markdown(
    "<p style='text-align: center;'>Upload an image of a handwritten English character (a-z) and get predictions using a trained model.</p>",
    unsafe_allow_html=True,
)
st.markdown("---")

uploaded_file = st.file_uploader("📤 Upload image", type=["jpg", "jpeg", "png"])
if uploaded_file:
    image = Image.open(uploaded_file)
    st.image(image, caption="🖼 Uploaded Image", use_column_width=True)

    if st.button("🔍 Predict Character"):
        try:
            # Function to preprocess uploaded image
            def preprocess_image(image):
                image = image.convert("RGB")
                image = image.resize((32, 32))
                image_array = np.array(image) / 255.0
                image_array = image_array.astype(np.float32)
                image_array = image_array.reshape(1, 32, 32, 3)

                # Duplicate the image to match batch size of 32
                batch_array = np.tile(image_array, (32, 1, 1, 1))  # shape becomes (32, 32, 32, 3)
                return batch_array

            processed_image = preprocess_image(image)
            output_dict = model(processed_image, training=False)
            predictions = output_dict["output_0"].numpy()

            predicted_class = np.argmax(predictions[0])
            confidence = float(np.max(predictions[0]))
            character = character_mapping.get(predicted_class, "Unknown")
            # Display results
            st.markdown("---")
            st.success(f"✅Predicted Character: `{character.upper()}`")
            st.info(f"🧠Confidence Score: `{confidence * 100:.2f}%`")

            # Show top 3 predictions
            st.markdown("🔝 Top 3 Predictions:")
            top_3_indices = np.argsort(predictions[0])[-3:][::-1]
            for i, idx in enumerate(top_3_indices):
                label = character_mapping.get(idx, "Unknown")
                prob = predictions[0][idx]
                st.write(f"{i + 1}. {label.upper()} — {prob * 100:.2f}%")
        except Exception as e:
            st.error(f"Prediction failed: {str(e)}")
else:
    st.info("Please upload an image to begin prediction.")

# Footer
st.markdown("---")
st.markdown(
    "<p style='text-align: center; font-size: 12px;'>Made with Streamlit and TensorFlow</p>",
    unsafe_allow_html=True,
)
st.markdown(
    "<p style='text-align: center; font-size: 10px;'>© 2025 Omeche Theodore. All rights reserved.</p>",
    unsafe_allow_html=True,
)


