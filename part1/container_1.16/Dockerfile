FROM ubuntu:20.04 

WORKDIR /mynode  
RUN apt update 
RUN apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN apt install -y git
RUN apt install wget
RUN apt install gnupg
RUN wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | apt-key add -
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.4.list
RUN apt-get update
RUN apt-get install -y mongodb-server
RUN mkdir -p /var/lib/mongodb 
RUN exec /bin/bash
RUN touch /var/lib/mongodb/.keep 
RUN chown -R mongodb:mongodb /var/lib/mongodb
VOLUME [ "/var/lib/mongodb" ]
EXPOSE 27017
USER mongodb
WORKDIR /var/lib/mongodb
ENTRYPOINT ["/usr/bin/mongod", "--config", "/etc/mongodb.conf"]
CMD ["--quiet"]

