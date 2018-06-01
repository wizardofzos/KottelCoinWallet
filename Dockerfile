# OOCOIN Dockerfile.....

FROM ubuntu:18.04

MAINTAINER Henri Kuiper version 1.2

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y libboost-all-dev
RUN apt-get install -y wget
RUN cd /root && wget  https://github.com/wizardofzos/KottelCoinWallet/blob/master/KottelCoin
RUN apt-get install -y libqt5widgets5
RUN apt-get install -y xorg
RUN chmod +x /root/KottelCoin
CMD /root/KottelCoin --data-dir /crypto
