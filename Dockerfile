# Use an official Python runtime as a base image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt into the working directory
COPY requirements.txt /app/

# Install any needed dependencies specified in requirements.txt
RUN pip install -r requirements.txt

# Copy the specific files and directories into the working directory
COPY templates /app/templates/
COPY __init__.py app.py config.py requirements.txt /app/

# Expose a port for your Flask application
EXPOSE 8080

# Define the command to run your Flask app
CMD ["python", "app.py"]

