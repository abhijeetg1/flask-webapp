# Use official Python slim image
FROM python:3.10-slim

# Set working directory in container
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app's source code
COPY . .

# Expose port 5000 (Flask default)
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]

