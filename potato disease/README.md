```markdown
Potato Disease Classification API

This project aims to provide an API for predicting the disease of potato plants using machine learning models. The API utilizes a trained Convolutional Neural Network (CNN) to classify potato diseases from images, helping farmers to detect and manage diseases in potato crops. The application serves the model for real-time predictions.

Project Structure

The project is divided into the following directories:

- API/: Contains the API code that serves the trained model and provides endpoints for prediction.
  - load: Handles model loading.
  - main.py: The main entry point for the API.
  - models.config: Configuration file for model settings.
  - requirements.txt: Lists all required Python libraries and dependencies.
  
- training/: Contains the training scripts and Jupyter notebooks used for training the model.
  - Training_notebook.ipynb: Jupyter notebook for training the model.
  - .ipynb_checkpoints/: Contains the checkpoint files for the notebook during training.

Features

- Image Classification: Classifies potato plant diseases (e.g., Early Blight, Late Blight, Healthy).
- Model Deployment: The trained model is deployed using FastAPI to make real-time predictions.
- REST API: Provides an endpoint to send image data and receive disease classification results.

Setup Instructions

To run the project locally, follow the steps below:

1. Clone the repository

Clone the repository to your local machine:

```bash
git clone https://github.com/Omeche/DL-Projects.git
cd DL-Projects
```

2. Install dependencies

Ensure you have Python 3.6+ installed. Then, install the required dependencies by running:

```bash
pip install -r requirements.txt
```

3. Training the Model

If you want to train the model from scratch, navigate to the `training/` directory and run the Jupyter Notebook:

```bash
cd training
jupyter notebook
```

In the notebook, you will find the steps to preprocess the data, train the model, and evaluate the performance. Once the model is trained, save it for later deployment.

4. Running the API

To run the API, navigate to the API/ folder and start the FastAPI server. The server will listen for incoming requests and provide predictions.

```bash
cd API
python main.py
```

The API will be accessible at `http://127.0.0.1:8000`. You can test the prediction endpoint by sending a `POST` request with an image of a potato plant.

Model Details

The potato disease classification model is based on a Convolutional Neural Network (CNN), a popular deep learning architecture for image classification tasks. The model is trained to classify potato diseases into categories such as:

- Early Blight
- Late Blight
- Healthy

API Endpoints

The FastAPI application provides the following endpoints:

 `POST /predict`
- Description: Accepts an image of a potato plant and returns the disease classification.
- Request Body: The request should include an image file.
- Response: The API will return the predicted disease class along with a confidence score.
  
  Example request:
  ```bash
  curl -X 'POST' \
    'http://127.0.0.1:8000/predict' \
    -F 'file=@path_to_your_image.jpg'
  ```

  Example response:
  ```json
  {
    "prediction": "Early Blight",
    "confidence": 0.92
  }
  ```

Running the Application in Docker (Optional)

To run the application in a Docker container for easy deployment:

1. Build the Docker image:
   ```bash
   docker build -t potato-disease-classification .
   ```

2. Run the Docker container:
   ```bash
   docker run -p 8000:8000 potato-disease-classification
   ```

The API will be available on `http://localhost:8000`.

AWS Deployment

This project is also deployed on AWS using Amazon EC2 and AWS S3 for storing the model files. Follow the steps below to deploy the API on AWS:

1. Set Up AWS EC2 Instance

- Launch an EC2 instance with an Ubuntu or Amazon Linux AMI.
- Ensure you configure security groups to allow HTTP traffic on port 80 and SSH on port 22.
- SSH into the EC2 instance using the key pair provided when setting it up.

2. Set Up the Environment on EC2

Once logged into the EC2 instance, install the necessary dependencies:

```bash
sudo apt update
sudo apt install python3-pip python3-dev
pip3 install -r requirements.txt
```

3. Upload the Model to AWS S3 (Optional)

If you want to store your model on AWS S3, you can upload the model files and then load them from there:

```bash
aws s3 cp potato_disease_model.tar.gz s3://your-bucket-name/
```

In the FastAPI application, you can modify the model loading code to fetch the model from S3.

4. Start the API on EC2

Start the FastAPI server:

```bash
python3 main.py
```

Ensure the server listens on all interfaces so it can be accessed remotely:

```bash
python3 main.py --host 0.0.0.0 --port 80
```

The API should now be accessible via the public IP address of your EC2 instance on port 80.

5. Set Up Nginx for Reverse Proxy (Optional)

For better performance and security, you can set up **Nginx** as a reverse proxy in front of your FastAPI application.

Install Nginx:

```bash
sudo apt install nginx
```

Configure the reverse proxy by editing the Nginx configuration:

```bash
sudo nano /etc/nginx/sites-available/default
```

Add the following configuration:

```
server {
    listen 80;
    server_name your-ec2-ip-or-domain;

    location / {
        proxy_pass http://127.0.0.1:8000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    }
}
```

Restart Nginx:

```bash
sudo systemctl restart nginx
```

Now, the FastAPI app will be accessible via the domain name or public IP of your EC2 instance.

License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

Acknowledgments

- Thanks to the contributors who provided datasets and pre-trained models.
- Special thanks to FastAPI for its easy-to-use framework for deploying machine learning models as APIs.
- TensorFlow/Keras for providing the necessary tools for training and saving the model.

Contact

For any questions or suggestions, feel free to reach out to me on GitHub or via email.

- GitHub: [https://github.com/Omeche](https://github.com/Omeche)
- Email: [omechetochi@gmail.com]
```

