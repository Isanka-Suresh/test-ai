FROM python:3.10.2-slim as base

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 8080

CMD ["python","app.py"]