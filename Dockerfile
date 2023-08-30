FROM python:3.10-slim

WORKDIR /

COPY requirements.txt /

RUN apt-get update && apt-get install -y libgl1-mesa-glx  && \
    apt-get install -y libglib2.0-0 && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

COPY . /

CMD [ "python", "/launch.py", "--listen" ]
