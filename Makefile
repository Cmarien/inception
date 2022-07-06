all: up

up:
	@cp srcs/.env .
	@systemctl stop mysql.service
	@sudo mkdir -p /home/cmarien/data/wordpress
	@sudo mkdir -p /home/cmarien/data/mysql
	@docker-compose -f ./srcs/docker-compose.yml up -d --build
	@rm .env

down:
	@cp srcs/.env .
	@docker-compose -f ./srcs/docker-compose.yml down
	@rm .env

.PHONY: up down
