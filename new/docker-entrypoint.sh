#!/bin/bash

echo "Iniciando configuración"
if [ ! -e index.php ]; then
    echo "copiando archivos"
    mv /usr/src/wordpress/* /var/www/html/
    echo "Wordpress movido"
    chown -R www-data:www-data /var/www/html/
fi

echo "Fin de configuracion"
exec "$@"