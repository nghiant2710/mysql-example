#!/bin/bash
if [ ! -d /data/mysql ]; then
	mkdir -p /data/mysql
	cp -r /var/lib/mysql/* /data/mysql
	#sed -i -e "s@^datadir.*@datadir = /data/mysql@" /etc/mysql/my.cnf
	rm -rf /var/lib/mysql
	chown -R mysql:mysql /data/mysql
fi
service mysql start
mysql -uroot -proot -e "SHOW DATABASES";
bash