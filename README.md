
# Flask Web App

A simple Flask web application built to demonstrate CI/CD using Jenkins and Docker on AWS.

---

## 🧰 Tech Stack

- Python 3
- Flask
- Docker
- Jenkins
- GitHub
- AWS EC2 (Ubuntu)

---

## 🚀 Features

- Lightweight Flask app
- Dockerized for containerized deployment
- Jenkins pipeline for CI/CD
- Webhook-enabled for auto-deployment on GitHub pushes

---

## 📁 Project Structure

```
flask-webapp/
│
├── app.py                  # Main Flask application
├── requirements.txt        # Python dependencies
├── Dockerfile              # Container instructions
├── Jenkinsfile             # Jenkins pipeline script
├── venv/                   # Python virtual environment
├── README.md               # Project documentation
```

---

## ⚙️ How to Run Locally

### 1️⃣ Clone the repository
```bash
git clone https://github.com/abhijeetg1/flask-webapp.git
cd flask-webapp
```

### 2️⃣ Create and activate virtual environment
```bash
python3 -m venv venv
source venv/bin/activate
```

### 3️⃣ Install dependencies
```bash
pip install -r requirements.txt
```

### 4️⃣ Run the Flask app
```bash
python app.py
```

Visit: [http://localhost:5000](http://localhost:5000)

---

## 🐳 Docker Deployment

### 🛠 Build Docker Image
```bash
docker build -t flask-webapp .
```

### ▶️ Run Container
```bash
docker run -d -p 5000:5000 --name flask-webapp-container flask-webapp
```

Access it on: `http://<your-ec2-public-ip>:5000`

---

## 🧪 Testing with `curl`
```bash
curl http://localhost:5000
```

Expected Output:
```
Hello, this is Abhijeet's Flask Web App!
```

---

## 🤖 Jenkins CI/CD Setup

### ✅ Jenkinsfile already configured:
- Builds Docker image
- Pushes to container registry (if configured)
- Runs the container on EC2

### 🔁 GitHub Webhook:
Ensure GitHub webhook is configured:
- URL: `http://<your-jenkins-server>:8080/github-webhook/`
- Content type: `application/json`

### 🧪 Trigger Jenkins build:
Any `git push` to `main` should automatically trigger the Jenkins pipeline.

---

## 🧼 Clean Up Docker

```bash
docker stop flask-webapp-container
docker rm flask-webapp-container
docker rmi flask-webapp
```

---

## 📝 Author

**Abhijeet Gorai**  
DevOps Engineer | AWS | Jenkins | Docker | Python

---
