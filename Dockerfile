# fenrir/iptools
# Debian buster-slim+ssh
#
# VERSION 12.0.1
#
FROM fenrir/ssh-only
LABEL org.opencontainers.image.authors="dont@want.spam.invalid"

ENV DEBIAN_FRONTEND noninteractive

# Install packages
RUN apt-get update &&\
    apt-get dist-upgrade -y &&\
    apt-get install -y -q ssh iproute2 iputils-ping dnsutils tcpdump &&\
# Cleanning
    apt-get autoclean &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*.deb /tmp/* /var/tmp/*
