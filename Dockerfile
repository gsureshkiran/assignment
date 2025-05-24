FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app/ ./app/
ENV FLASK_APP=app/app.py
EXPOSE 5000
CMD ["python", "app/app.py"]
