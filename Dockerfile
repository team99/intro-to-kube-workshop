# Base Image
# From the official Python Docker image https://hub.docker.com/_/python
FROM python:3.9.10-slim-buster

# set the working directory in the container
WORKDIR /app

# copy the dependencies file to the working directory
# there is another command called ADD
# what is the difference between COPY and ADD
COPY requirements.txt .

# install dependencies
# RUN will create additional layer on top of base OS image
RUN pip install --no-cache-dir pip==22.0.3 && \
    pip install --no-cache-dir -r requirements.txt

# append with && for other software e.g apt-get install git curl bash

# copy the content of current folder to the working directory
COPY . .

# command to run on container start
CMD ["python", "./app.py"]
