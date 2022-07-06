FROM debian:buster

RUN apt-get update && apt-get -y install mariadb-server mariadb-client \
&& rm -rf /var/lib/apt/lists/* \
&& mkdir -p /var/run/mysqld \
&& chown -R mysql:mysql /var/run/mysqld \
&& chmod 777 /var/run/mysqld

EXPOSE 3306

COPY ./tools/run.sh /usr/local/bin/
COPY ./tools/wordpress.sql /usr/local/bin/
RUN	 chmod +x /usr/local/bin/run.sh
ENTRYPOINT ["run.sh"]

CMD ["mysqld", "--bind-address=0.0.0.0"]
