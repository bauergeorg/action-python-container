# Base image
FROM python:3.8-slim-buster

# Set working dir
WORKDIR /app
# Copy all data from repo into container
ADD . /app

# Install packages
RUN pip3 install -r requirements.txt

# Permission change of the bash file
RUN chmod +x entrypoint.sh

# Code file to execute when the docker container starts up
ENTRYPOINT ["/app/entrypoint.sh"]