# Dockerfile
FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# This line is changed to use the PORT environment variable from Cloud Run
CMD uvicorn main:app --host 0.0.0.0 --port $PORT
