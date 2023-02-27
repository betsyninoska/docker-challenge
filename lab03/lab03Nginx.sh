#!/bin/bash
#Challenge 03 Laboratorio1
echo "INICIO Lab03 "
echo "Servidor Nginx"

docker pull nginx:1.22.1
echo "Fin descarga"

echo "inicio nginx"
docker run -d --name bootcamp-web -p 9999:80 nginx:1.22.1

echo "Copia del archivo index.html"
docker cp index.html bootcamp-web:/usr/share/nginx/html

echo "Ejecución de cotenedor"
docker exec -it bootcamp-web  /bin/bash


#culminacion
echo " FIN  Lab03"
