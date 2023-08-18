FROM ubuntu:latest
RUN apt update -y && apt install npm -y && npm install -g pm2
RUN mkdir /nodejs
WORKDIR /nodejs
COPY . /nodejs
EXPOSE 5000
CMD /bin/bash
