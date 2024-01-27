NAME=inception

DIR_COM=srcs/docker-compose.yml
DIR_ENV=srcs/.env

.PHONY: create work run stop clean re re-start delete

create:
	docker-compose -f $(DIR_COM) --env-file $(DIR_ENV)  -p $(NAME) up -d --build

work:
	rm -rf ~/.docker

#run:
#	docker run -it $(NAME) bash

run:
	docker exec -it $(NAME)_ngx_1 /bin/bash

stop:
	cd srcs && docker-compose stop

clean: stop
	cd srcs && docker-compose rm

re: clean create

re-start: re run

delete:
	docker rmi -f $(docker images -aq)
