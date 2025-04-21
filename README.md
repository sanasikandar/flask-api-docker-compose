# flask-api-docker-compose
# 🐳 Flask API with Redis using Docker Compose

This project demonstrates a Dockerized Flask API application with Redis as a caching backend, orchestrated using Docker Compose. It's built with scalability, development ease, and production-readiness in mind.

---

## 🚀 Getting Started

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/)
- Optional: Python 3.12+ and `venv` for local testing

---

## Flask API with Docker Compose
This repository provides a simple example of a Flask API application running with Docker Compose, utilizing Redis as a cache.

## 🚀 Quick Start
Clone the repository:

git clone https://github.com/sanasikandar/flask-api-docker-compose.git
cd flask-api-docker-compose
Make the wait-for-it.sh script executable:

chmod +x wait-for-it.sh
## Build and start the application:

docker-compose up --build
Access the Flask API:

Open your browser and navigate to http://localhost:5000

Or test with curl:

curl http://localhost:5000

## 🧹 Clean Up
To stop and remove the containers:

docker-compose down
To stop, remove the containers, and volumes:

docker-compose down -v

## ⚙️ Environment Variables

Variable	Service	Purpose	Default
FLASK_ENV	flask-api	Flask environment mode	development
REDIS_HOST	flask-api	Redis service hostname	redis
REDIS_PORT	flask-api	Redis service port	6379
These variables are defined in docker-compose.yml.

## 📦 Scaling Flask API
You can horizontally scale the Flask service using Docker Compose:


docker-compose up --scale flask-api=3 --build
This will scale the Flask service to 3 instances.

## 🩺 Health Checks
Health checks ensure services are ready before proceeding:

Redis: Uses redis-cli ping

Flask API: Monitors health via the / endpoint

Flask waits for Redis to be available using the wait-for-it.sh script before starting.

## 🛠 Design Considerations
Multi-stage Docker builds: Keeps image size small and clean.

Non-root user: Enhances security.

Volumes:

Code reloading in development.

Redis data persistence.

Automatic restarts: Services recover on failure.

Network isolation: Services run in an isolated Docker network.

.dockerignore: Reduces build context and improves efficiency.

