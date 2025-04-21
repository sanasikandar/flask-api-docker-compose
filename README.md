# flask-api-docker-compose
# 🐳 Flask API with Redis using Docker Compose

This project demonstrates a Dockerized Flask API application with Redis as a caching backend, orchestrated using Docker Compose. It's built with scalability, development ease, and production-readiness in mind.

---

## 📁 Project Structure

. ├── app.py # Flask application ├── requirements.txt # Python dependencies ├── Dockerfile # Multi-stage Dockerfile ├── docker-compose.yml # Main Compose configuration ├── docker-compose.override.yml # Dev overrides (e.g., volume mounts) ├── wait-for-it.sh # Startup script to wait for Redis ├── .dockerignore # Files to exclude from Docker build └── README.md # Documentation

yaml
Copy
Edit

---

## 🚀 Getting Started

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/)
- Optional: Python 3.12+ and `venv` for local testing

---

## 🧱 Setup & Usage

📦 Clone the Repository
bash
Copy
Edit
git clone https://github.com/sanasikandar/flask-api-docker-compose.git
cd flask-api-docker-compose
🛠 Make the wait-for-it.sh Executable
bash
Copy
Edit
chmod +x wait-for-it.sh
🐳 Build and Start the Containers
bash
Copy
Edit
docker-compose up --build
Once running, the Flask API will be available at:

http://localhost:5000

You can also test it via cURL:

bash
Copy
Edit
curl http://localhost:5000
🧹 Clean Up
To stop and remove containers:

bash
Copy
Edit
docker-compose down
To also remove associated volumes:

bash
Copy
Edit
docker-compose down -v

