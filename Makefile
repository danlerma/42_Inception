NAME=inception

DIR_COM=srcs/docker-compose.yml
DIR_ENV=srcs/.env
IMAGES="$(docker images -aq)"

.PHONY: create work run stop clean re re-start delete

create:
	docker-compose -f $(DIR_COM) --env-file $(DIR_ENV)  -p $(NAME) up -d --build

work:
	rm -rf ~/.docker

run:
	docker exec  --privileged -it inception_ngx_1 bash
#run:
#	cd srcs && docker compose exec ngx /bin/bash

stop:
	docker stop inception_ngx_1 inception_wordpress-php_1

clean: stop
	docker rm inception_ngx_1 inception_wordpress-php_1
	docker image prune

re: clean create

re-start: re run

delete:
	 echo "docker rmi -f $(docker images -aq)"
