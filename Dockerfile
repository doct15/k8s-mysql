FROM mysql:5.7

ENV MYSQL_DATABASE=wordpress 
ENV TEST=testing8

RUN apt-get -y update && \
apt-get install -y sed && \
apt-get install -y perl

RUN sed -i "s|#bind-address\t= 127.0.0.1|bind-address = 0.0.0.0|g" /etc/mysql/mysql.conf.d/mysqld.cnf

VOLUME  ["/etc/mysql", "/var/lib/mysql"]

EXPOSE 3306
