FROM resin/rpi-raspbian:latest
MAINTAINER Clément Trassoudaine <trassoud@eurecom.fr>

WORKDIR /root

# Install packages
RUN apt update && apt upgrade -y
RUN apt install -y vim

# Base install
ADD scripts/init.sh /tmp/init.sh
RUN bash /tmp/init.sh && rm /tmp/init.sh

# Python Datascience stuff
ADD scripts/datascience.sh /tmp/datascience.sh
RUN bash /tmp/datascience.sh && rm /tmp/datascience.sh

# Octave stuff
ADD scripts/octave.sh /tmp/octave.sh
RUN bash /tmp/octave.sh && rm /tmp/octave.sh

ADD start.sh /start.sh

ENTRYPOINT ["/bin/bash", "-e", "/start.sh"]

EXPOSE 8888