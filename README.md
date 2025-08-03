### 📄 `README.md`

```markdown
# SCIN Dataset (Google Skin Condition Identification)

This repository contains code and instructions for working with the **Google SCIN (Skin Condition Identification)** dataset.

Due to GitHub's file size restrictions, the full dataset (12 GB) is hosted externally.

---

## 📥 Dataset Download

Click the link below to download the zipped dataset from Google Drive:

🔗 **[Download SCIN Dataset (12 GB)](https://drive.google.com/file/d/1__4s403vBcGa5Z5eknyriV-XvjnFrK2y/view?usp=drive_link)**

> Ensure you're signed in to a Google account and have sufficient storage before downloading.

---

## 📁 Contents

The downloaded `scin_data.zip` contains:

```

scin\_data/
├── scin\_cases.csv
├── scin\_labels.csv
└── images/
├── \<image\_1>.jpg
├── \<image\_2>.jpg
└── ...

````

- `scin_cases.csv`: Metadata on case submissions.
- `scin_labels.csv`: Expert labels for skin conditions.
- `images/`: Clinical skin images referenced in the CSVs.

---

## 🧪 Usage

Unzip the file and load data in your notebook like so:

```python
import pandas as pd
cases_df = pd.read_csv("scin_data/scin_cases.csv")
labels_df = pd.read_csv("scin_data/scin_labels.csv")
````

Images can be loaded using `PIL`, `OpenCV`, or your preferred image library.

---

## 📎 Notes

* The dataset was sourced from the [Google SCIN demo notebook](https://github.com/google-research/google-research/tree/master/scin).


