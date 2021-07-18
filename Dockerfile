FROM python:3.9.1 as build
RUN mkdir /app
WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY ./labs/ .