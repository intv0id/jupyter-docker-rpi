FROM resin/rpi-raspbian:latest
MAINTAINER Clément Trassoudaine <trassoud@eurecom.fr>

WORKDIR /root

# Install packages
RUN apt update && apt upgrade -y
RUN apt install -y vim

# Configure the database
ADD init.sh /tmp/init.sh
RUN chmod 775 /tmp/init.sh
RUN rm /tmp/init.sh

ADD start.sh /start.sh

ENTRYPOINT ["/bin/bash", "-e", "/start.sh"]

EXPOSE 8888