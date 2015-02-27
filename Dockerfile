FROM resin/rpi-raspbian:jessie

RUN apt-get update && apt-get install -y debconf-utils

RUN echo 'mysql-server mysql-server/root_password password root' | debconf-set-selections  \
		&& echo 'mysql-server mysql-server/root_password_again password root' | debconf-set-selections

RUN apt-get install -y mysql-server

ADD . /

CMD ["/bin/bash", "start.sh"]