FROM python:latest

# Set the working directory to /app
WORKDIR /lab

# Copy the current directory contents into the container at /app
COPY . /lab

RUN apt-get update && \
    apt-get -y install python3-pandas

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]

COPY requirements.txt ./
RUN pip3 install -r  requirements.txt
