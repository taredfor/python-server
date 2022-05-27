# syntax=docker/dockerfile:1
FROM python:3.9-buster as build

WORKDIR /app

COPY requirements.txt . ./

COPY . .

RUN pip3 install -r requirements.txt

CMD ["python3","./app.py"]




