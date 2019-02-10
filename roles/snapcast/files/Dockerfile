FROM alpine

RUN apt-get update && apt-get install wget -y --no-install-recommends && rm -r /var/lib/apt/lists/*

RUN wget https://github.com/badaix/snapcast/releases/download/v0.15.0/snapclient_0.15.0_armhf.deb

RUN dpkg -i --force-all snapclient_0.15.0_armhf.deb
RUN apt-get -f install -y

CMD "/usr/sbin/snapserver"
