all: run

run: 
	sudo mkdir -p /home/cmarien/data/wordpress
	sudo mkdir -p /home/cmarien/data/mysql
	docker-compose -f ./srcs/docker-compose.yml up --build

up:
	sudo mkdir -p /home/cmarien/data/wordpress
	sudo mkdir -p /home/cmarien/data/mysql
	docker-compose -f ./srcs/docker-compose.yml up -d --build

down: 	
	docker-compose -f ./srcs/docker-compose.yml down

.PHONY: run up down
