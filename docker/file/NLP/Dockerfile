# Use the official Python image as the base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Install Java
RUN apt-get update && apt-get install -y default-jre

# Install StanfordNLP with Japanese package
RUN pip install stanfordnlp
RUN python -m stanfordnlp.download ja  # Download Japanese models

# Copy your application code into the container
COPY . .

# Command to run when the container starts
CMD [ "python", "./test.py" ]
