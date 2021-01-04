FROM ubuntu:16.04 

WORKDIR /mydir  
COPY frontend-example-docker-master .
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN node -v && npm -v
RUN npm install
RUN npx browserslist@latest --update-db
CMD npm start