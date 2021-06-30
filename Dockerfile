# Base Image
FROM python:3.8

# set the working directory in the container
WORKDIR /app

# copy the dependencies file to the working directory
# there is another command called ADD
# what is the difference between COPY and ADD
COPY requirements.txt .

# install dependencies
# RUN will create additional layer on top of base OS image
RUN pip install -r requirements.txt
# RUN apt-get install git curl bash

# copy the content of current folder to the working directory
COPY . .

# command to run on container start
CMD ["python", "./app.py"]
