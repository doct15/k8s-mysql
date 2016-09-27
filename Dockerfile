FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD=alexiscool \
    MYSQL_DATABASE=wordpress

VOLUME  ["/etc/mysql", "/var/lib/mysql"]

ADD run.sh /run.sh

EXPOSE 3306

CMD [/run.sh]
