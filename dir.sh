#!/bin/bash

# Cores
YELLOW='\033[0;33m'
RED='\033[0;31m'
CYAN='\033[0;36m'
GREEN='\033[0;32m'
NC='\033[0m'

if [[ "$1" == "" ]] # Verificar se o argumento está vazio.
then
	echo -e " \nParâmetros: -o >> Salva os diretórios em um arquivo 'out.txt'.\n"
	echo -e " ${YELLOW}- - - - - - - - - - - - - - - - - - - - -${NC} "
	echo -e "${CYAN} Modo de uso: ./dir.sh URL${NC}"
	echo -e " ${YELLOW}- - - - - - - - - - - - - - - - - - - - -${NC} "

else
	for dir in $(cat "$2") # Percorre o conteudo de um arquivo, para o arquivo que sejar.
	do
		directory=$(curl -s -o /dev/null -w "%{http_code}" -A "mkv" "$1"/"$dir") # Recebe o código de status da requisição HTTP.
		if [[ "$directory" == "200" ]] || [[ "$directory" == "301" ]]
		then
			echo -e "${GREEN}$1/$dir (Status - $directory).${NC}"

			if [[ "$3" == "-o" ]]
			then
				echo -e "${GREEN}$1/$dir (Status - $directory).${NC}" >> out.txt
			fi
		fi
	done
fi
