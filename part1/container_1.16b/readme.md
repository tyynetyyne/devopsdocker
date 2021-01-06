## Node-development enviroment for VSCode

With this docker image you get minimal development environment for working with node and git. You can clone your repository inside docker container, edit code using VSCode, run it via VSCode terminal and view result in your browser.

### Setup

0. Build image
docker build . -t node-dev

1. Start container (port 22 for ssh-connection):
docker run -p 22:22 -it -d node-dev

2. Install Remote Development -extension in VSCode to get ssh-support for VSCode.

3. Connect to docker container from VSCode: select View -> Command palette -> Remote-SSH: Connect to host -> localhost

4. Enter password: test

### Usage

Open terminal in VSCode, work with code as you would locally (clone repository, run npm install, npm start etc).
