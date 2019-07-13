FROM selenium/node-chrome:latest

RUN sudo apt-get install curl 
RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

RUN sudo apt-get install nodejs
RUN sudo npm install -g lerna
RUN sudo npm install -g mocha

VOLUME /app
WORKDIR /app
