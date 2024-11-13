FROM --platform=Linux/amd64 python:3.9-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY *.py .
CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:app"]