FROM circleci/node:jessie-browsers

RUN npm install  --prefix ~/ selenium-standalone &&\
          ~/node_modules/selenium-standalone/bin/selenium-standalone install &&\
          ~/node_modules/selenium-standalone/bin/selenium-standalone install --drivers.chrome.version=2.15 --drivers.chrome.baseURL=https://chromedriver.storage.googleapis.com \

VOLUME /app
WORKDIR /app
