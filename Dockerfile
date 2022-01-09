# Base image from dockerhub
FROM python:3.9.1 as build
# Needed apt dep for lab4
# Must be installed via apt-get
RUN apt-get update -y && \
    apt-get install -y python-apt

# Make directories in the image
RUN mkdir /app
# Explicitly set permissions on ansible cache
# Set work dir
WORKDIR /app
# Copy the python dep list into the image fs
COPY requirements.txt ./
# Install all python deps
RUN pip install --no-cache-dir -r requirements.txt

# Define non-root user for ansible to function
RUN useradd -rm -d /home/dev -s /bin/bash -g root -G sudo -u 1000 dev
RUN mkdir /home/dev/.ansible/
RUN mkdir /home/dev/.ansible/tmp/
RUN chmod -R 700 /home/dev/.ansible/
RUN chown -R 1000:0 /home/dev/.ansible/
RUN chmod -R 700 /home/dev/.ansible/tmp/
RUN chown -R 1000:0 /home/dev/.ansible/tmp/
VOLUME home/dev/.ansible/

USER dev