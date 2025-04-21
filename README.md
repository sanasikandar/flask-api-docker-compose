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

### Clone the Repository

```bash
git clone https://github.com/sanasikandar/flask-api-docker-compose.git
cd flask-api-docker-compose
chmod +x wait-for-it.sh
docker-compose up --build
Access the Flask API
Open http://localhost:5000 in your browser or test with:


curl http://localhost:5000
🧹 Clean Up
To stop and remove containers:


docker-compose down
To remove containers and volumes:


docker-compose down -v
⚙️ Environment Variables

Variable	Service	Purpose	Default
FLASK_ENV	flask-api	Flask environment mode	development
REDIS_HOST	flask-api	Redis service hostname	redis
REDIS_PORT	flask-api	Redis service port	6379
Defined in docker-compose.yml.

📦 Scaling Flask API
You can horizontally scale the Flask service using:


docker-compose up --scale flask-api=3 --build
🩺 Health Checks
Health checks ensure services are ready before proceeding:

Redis: Uses redis-cli ping

Flask API: Monitors health via the / endpoint

Flask waits for Redis using wait-for-it.sh

🛠 Design Considerations
Multi-stage Docker builds: Keeps image size small and clean

Non-root user: Enhances security

Volumes:

Code reloading in development

Redis data persistence

Automatic restarts: Services recover on failure

Network isolation: Services run in an isolated Docker network

.dockerignore: Reduces build context



