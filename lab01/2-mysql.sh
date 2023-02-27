#!/bin/bash
#Challenge 03 Laboratorio1
echo "***********INICIO*******"
echo "Ejecución Contenedor MySQL y PHPMyAdmin"
echo "Realizado por Betsy Ninoska la Gloria es de Dios"


echo "Descargando cotenedor mysql:8.0"
docker pull mysql:8.0

echo "Descargando cotenedor phpmyadmin"
docker pull phpmyadmin

echo "--------------------Iniciando  mysql-------------------"
docker run --name=db -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -d mysql:8.0
echo "------------------Iniciando phpmyadmin-----------------"
docker run --name=my-admin -p 82:80 --link db:db -d phpmyadmin
echo "corriendo mysql"
#culminacion
echo "******FIN  Lab01_02*********"
