#!/bin/bash

# valida se existe o binario do go
# caso nao exista entao cria
file=$GOROOT/bin/go
if ! [ -f "$file" ] 
then
	echo "Go nao encontrado. Compilando....."
	cd /home/go/src && ./make.bash
fi


exec "$@";