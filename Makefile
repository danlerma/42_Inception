

.PHONY: all db wrdp ng clean fclean

all:
	ls -la
	cd srcs && docker-compose up --build

db:
	docker exec -it mariadb_inception bash

wrdp:
	docker exec -it wordpress_inception bash

ng:
	docker exec -it nginx_inception bash

clean:
	docker system prune -a

fclean: clean
	docker volume prune