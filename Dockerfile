FROM python:3.9

WORKDIR /app

COPY requirements.txt /app/
RUN pip3 install -r requirements.txt
COPY . /app

# Expose a port to Containers 
EXPOSE 80/tcp

# Command to run on server
CMD ["gunicorn", "-b", "0.0.0.0:80", "main:app"]
