# Use an official Python runtime as a parent image
FROM python:2.7-slim

# Set the working directory to /get-started
WORKDIR /get-started

# Copy the current directory contents into the container at /get-started
ADD . /get-started

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]
