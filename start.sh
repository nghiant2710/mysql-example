#!/bin/bash
if [ ! -d /data/mysql ]; then
	mkdir -p /data/mysql
	cp -r /var/lib/mysql/* /data/mysql
fi
service mysql stop
rm -rf /var/lib/mysql
ln -sf /data/mysql/ /var/lib/mysql
chown -R mysql:mysql /data/mysql
service mysql restart
mysql -uroot -proot -e "SHOW DATABASES";
bash