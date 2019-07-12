FROM circleci/node:jessie-browsers

RUN wget https://chromedriver.storage.googleapis.com/2.37/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip
RUN sudo mv chromedriver /usr/bin/chromedriver
RUN curl https://intoli.com/install-google-chrome.sh | bash
RUN mv /usr/bin/google-chrome-stable /usr/bin/google-chrome

VOLUME /app
WORKDIR /app
