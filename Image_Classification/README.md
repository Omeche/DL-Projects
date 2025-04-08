```markdown
 ✨ English Character Recognition App

This is a web-based machine learning application that predicts **handwritten English characters (a–z) from images. It utilizes a TensorFlow deep learning model for prediction and https://dl-projects-ivfqhfkzdj5t3vgkyjprj4.streamlit.app/Streamlit for an interactive, modern frontend.

 📌 Features

 🖼 Upload handwritten character images (JPG, JPEG, PNG).
 🧠 Predict lowercase English characters (`a–z`) using a pre-trained CNN.
 📊 Displays top 3 predictions with confidence scores.
 💡 User-friendly and visually appealing interface built with Streamlit.


 🧠 How It Works

1. You upload an image of a handwritten character.
2. The image is preprocessed (resized, normalized, reshaped).
3. A trained TensorFlow model makes a prediction using `TFSMLayer`.
4. The app displays:
   - The predicted character
   - Confidence score
   - Top 3 probable characters


 📁 Project Structure

```
Image_Classification/
├── saved_model/                # TensorFlow SavedModel (trained CNN)
├── app.py                      # Streamlit frontend application
├── requirements.txt            # Python dependencies
└── README.md                   # Project documentation
```

---

 🚀 Getting Started

 1. Clone the Repository

```bash
git clone https://github.com/Omeche/DL-Projects.git
cd DL-Projects/Image_Classification
```

 2. (Optional) Create a Virtual Environment

```bash
python -m venv venv
source venv/bin/activate         # Windows: venv\Scripts\activate
```

 3. Install Dependencies

```bash
pip install -r requirements.txt
```

 4. Run the App

```bash
streamlit run app.py
```

The app will open in your default browser at [https://dl-projects-ivfqhfkzdj5t3vgkyjprj4.streamlit.app/](https://dl-projects-ivfqhfkzdj5t3vgkyjprj4.streamlit.app/).

 🔧 Model Details

- Input Size: 32x32 RGB image
- Architecture: CNN trained on labeled handwritten character images
- Inference Engine: `TFSMLayer` from Keras for lightweight deployment
- Preprocessing: Resize, normalize, reshape, batch expand


 🖼 Sample UI
![App Screenshot](screenshot.png)![App Screenshot](screenshot.png)


 🧩 Dependencies

- `streamlit`
- `tensorflow`
- `keras`
- `numpy`
- `Pillow` (PIL)

All dependencies are listed in [`requirements.txt`](requirements.txt).


 📌 Example Output

- Predicted Character: `G`
- Confidence Score: `97.25%`
- Top 3 Predictions:
  1. G — 97.25%  
  2. C — 1.45%  
  3. O — 1.30%


 📌 Notes

- This app works best with clear, centered handwritten letters.
- The model currently supports only lowercase English characters (a–z).
- For improved results, scan or capture images in good lighting.


 📄 License

© 2025 Omeche Theodore 
All rights reserved.  
This project is licensed for personal and academic use only.


 💬 Feedback & Contributions

Questions, suggestions, or improvements?  
Open an issue or submit a pull request.  
Let’s build better AI together! 🤝
```


Let me know if you want:
- A `requirements.txt` auto-generated
- A deployment guide for Streamlit Cloud or Hugging Face

