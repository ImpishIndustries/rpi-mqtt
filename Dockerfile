FROM resin/rpi-raspbian:latest

ADD http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key /tmp

RUN apt-key add /tmp/mosquitto-repo.gpg.key

ADD http://repo.mosquitto.org/debian/mosquitto-jessie.list /etc/apt/sources.list.d

RUN apt-get update
RUN apt-get install mosquitto
RUN apt-get install mosquitto mosquitto-clients python-mosquitto

ADD conf/mqtt/mosquitto.conf /etc/mosquitto.conf