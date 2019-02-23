FROM circleci/node:jessie-browsers

RUN npm install  --prefix ~/ selenium-standalone &&\
          ~/node_modules/selenium-standalone/bin/selenium-standalone install &&\
          ~/node_modules/selenium-standalone/bin/selenium-standalone install --drivers.chrome.version=2.15 --drivers.chrome.baseURL=https://chromedriver.storage.googleapis.com &&\
          sudo apt-get update &&\
          sudo apt-get install -y xvfb fluxbox x11vnc dbus libasound2 libqt4-dbus libqt4-network libqtcore4 libqtgui4 libxss1 libpython2.7 libqt4-xml libaudio2 libmng1 fontconfig liblcms1 lib32stdc++6 lib32asound2 ia32-libs libc6-i386 lib32gcc1 nano \

VOLUME /app
WORKDIR /app
