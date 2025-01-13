# Use the official lightweight Python image based on Alpine Linux
FROM python

# Set the working directory
WORKDIR /docker_testcontainer

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . .

# Command to run the application
CMD ["python", "script.py"]