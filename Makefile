all: up

up:
	systemctl stop mysql.service
	sudo mkdir -p /home/cmarien/data/wordpress
	sudo mkdir -p /home/cmarien/data/mysql
	docker-compose -f ./srcs/docker-compose.yml up -d --build

down: 	
	docker-compose -f ./srcs/docker-compose.yml down

.PHONY: up down
