FROM python:3.11

WORKDIR /app

RUN apt update && apt install -y vim

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

# Make port 5000 available to the world outside this container
# EXPOSE 5000

CMD [ "python3", "main.py" ]