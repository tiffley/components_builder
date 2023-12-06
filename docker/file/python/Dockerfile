# Use the official Python image
FROM python:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Create a directory to mount scripts
RUN mkdir /app/scripts

# Mount local files under ./scripts to the /app/scripts directory in the container
VOLUME /app/scripts

# Set the default command to run when the container starts
CMD ["tail", "-f", "/dev/null"]
# CMD ["python", "test.py"] # Replace 'your_script.py' with the script you want to run
