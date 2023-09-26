# Use an official Python runtime as a parent image
FROM python:3.9

## Set environment variables
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SETTINGS_MODULE click_counter_project.settings

# Create and set the working directory
WORKDIR /app

# Install any needed packages
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Copy the current directory contents into the container
COPY . /app/

# Expose port 8000
EXPOSE 8000

# Define the command to run your application
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
