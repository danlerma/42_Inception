NAME=inception

#create:	
#	docker build -t $(NAME) .

.PHONY: create work run stop clean

create:
	docker-compose -f docker-compose.yml --env-file .env -p $(NAME) up -d --build

work:
	rm -rf ~/.docker

#run:
#	docker run -it $(NAME) bash

run:
	docker exec -it inception_ngx_1 /bin/bash

stop:
	docker-compose stop

clean: stop
	docker-compose rm
