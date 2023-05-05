FROM python:3.9-slim
WORKDIR /app/
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
WORKDIR /app/infra_project/
CMD python manage.py runserver 0:5000
