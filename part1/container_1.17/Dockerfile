FROM ubuntu:20.04 

WORKDIR /mynode  
RUN apt update 
RUN apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN apt install -y git
ENV DEBIAN_FRONTEND=noninteractive
RUN apt install -y tzdata
RUN apt install net-tools
RUN apt update && apt install openssh-server sudo -y
RUN useradd -rm -d /home/test -s /bin/bash -g root -G sudo -u 1000 test 
RUN echo 'test:test' | chpasswd
RUN service ssh start
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]


