FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

CMD python3.6 manage.py makemigrations && \
    python3.6 manage.py migrate && \
    python3.6 manage.py runserver 0.0.0.0:8000