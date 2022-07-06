FROM	debian:buster

RUN	apt-get update && \
	apt-get install nginx openssl -y
	
COPY	./tools/cmarien.42.fr.conf /etc/nginx/sites-available/.

RUN	openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 \
	-subj "/C=FR/ST=France/L=Paris/O=42/CN=cmarien.42.fr" \
	-keyout /etc/ssl/private/cmarien.key -out /etc/ssl/certs/cmarien.crt && ln -s /etc/nginx/sites-available/cmarien.42.fr.conf /etc/nginx/sites-enabled/cmarien.42.fr.conf

EXPOSE	443

CMD	["nginx", "-g", "daemon off;"]
