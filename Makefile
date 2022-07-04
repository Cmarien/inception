LOCAL_VOL = /home/cmarien/data

all: up

up: volumes
	docker-compose -f srcs/docker-compose.yml up -d --build

volumes:
	grep -q "cmarien.42.fr" /etc/hosts || sudo sed -i '1 i\127.0.0.1	cmarien.42.fr' /etc/hosts
	[ -d /home/cmarien/data ] || \
	( sudo mkdir -p /home/cmarien && \
	sudo chown -R 82:82 $(LOCAL_VOL)/wp && \
	sudo chown -R 100:101 $(LOCAL_VOL)/db )

down:
	docker-compose -f srcs/docker-compose.yml down

re: down all
