FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD=alexiscool \
    MYSQL_DATABASE=wordpress 

RUN apt-get -y update
RUN apt-get install -y sed
RUN apt-get install -y net-tools
RUN apt-get install -y vim
# RUN sed -i "s|#bind-address\t= 127.0.0.1|bind-address = 0.0.0.0|g" /etc/mysql/mysql.conf.d/mysqld.cnf


VOLUME  ["/etc/mysql", "/var/lib/mysql"]
ENV TEST=example3
EXPOSE 3306
