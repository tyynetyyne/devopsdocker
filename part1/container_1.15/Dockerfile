FROM ubuntu:16.04 

WORKDIR /mydir  
COPY front/build build
COPY jsonserver .
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
CMD npx json-server -H 0.0.0.0 --static build --port=3001 --watch db.json
