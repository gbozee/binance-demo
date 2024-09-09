# Use the official Python image from the Docker Hub
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Install the python-binance package
# RUN pip install python-binance

# Copy the rest of the application code into the container
COPY . .

# Change the working directory to the app subdirectory
WORKDIR /app/app

# Expose the port the app runs on
EXPOSE 8000

# Command to run the application
CMD ["uvicorn", "index:app", "--host", "0.0.0.0", "--port", "8000"]
