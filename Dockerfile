FROM python:latest

# Set the working directory to /app
WORKDIR /lab

# Copy the current directory contents into the container at /app
COPY . /lab

RUN apt-get update && \
    apt-get -y install python3-pandas

#Datasets to work
RUN ["wget", "https://data.wa.gov/api/views/f6w7-q2d2/rows.csv", "--output-document=ev_vechicales.csv"]
RUN ["wget", "https://data.cityofnewyork.us/api/views/c3uy-2p5r/rows.csv", "--output-document=air_quality.csv"] 

#VI to edit python file inside container
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]

COPY requirements.txt ./
RUN pip3 install -r  requirements.txt
