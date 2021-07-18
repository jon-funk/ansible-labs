# Base image from dockerhub
FROM python:3.9.1 as build
# Make directories in the image
RUN mkdir /app
RUN mkdir /.ansible/
# Explicitly set permissions on ansible cache
RUN chown -R 1000:1000 /.ansible/
# Set work dir
WORKDIR /app
# Copy the python dep list into the image fs
COPY requirements.txt ./
# Install all python deps
RUN pip install --no-cache-dir -r requirements.txt