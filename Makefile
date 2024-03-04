#########################################################################
#																		#
#																		#
#                      Dan Lerma 2024									#
#																		#
#																		#
#########################################################################

NAME=inception

#Crear el contenedor. No ponemos nombre porque levantamos el servicio que ya tiene nombre
build:
	docker-compose -p $(NAME) up -d --build

#Ejecutar en bash la imagen creada, el contenedor
run:
	docker-compose run $(NAME)_mariadb /bin/bash
#Borrar imagen
clean:
	docker rmi inception_mariadb --force

#Borrar network
netclean:
	docker network rm $(NAME)_comms
