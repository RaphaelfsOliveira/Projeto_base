# base image
FROM python:3

# env variables
ENV PYTHONUNBUFFERED 1

# work directory
RUN mkdir /backend
WORKDIR /backend

# project requirements
RUN pip install --upgrade pip
COPY /backend/requirements.txt /backend/
RUN pip install -r /backend/requirements.txt

# app
COPY . /backend/