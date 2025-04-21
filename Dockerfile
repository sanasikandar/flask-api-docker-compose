# Stage 1: build dependencies
FROM python:3.12-slim AS builder

WORKDIR /app
COPY requirements.txt .

RUN pip install --upgrade pip && \
    pip install --user -r requirements.txt

# Stage 2: final image
FROM python:3.12-slim

ENV PATH="/root/.local/bin:$PATH"

WORKDIR /app
COPY --from=builder /root/.local /root/.local
COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
