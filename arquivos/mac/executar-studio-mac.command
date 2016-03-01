#!/bin/sh

read_lnk()
{
	caminho_atual="$PWD"

	cd "$(dirname "$1")"
	LINK=$(readlink "$(basename "$1")")

	while [ "$LINK" ]; do
	
		cd "$(dirname "$LINK")"
		LINK=$(readlink "$(basename "$1")")
	done

	caminho_absoluto="$PWD/$(basename "$1")"
	cd "$caminho_atual"

	echo "$caminho_absoluto"
}

caminho_script=$(read_lnk "$0")
caminho_portugol=$(dirname "$caminho_script")
caminho_java="$caminho_portugol/java/java-mac/bin/java"

numero_parametros=$#


if [ $numero_parametros -gt 0 ]; then

	lista_argumentos=""

	for argumento; do	

		if [ -f "$argumento" ]; then

			argumento=$(read_lnk "$argumento")
	
			argumento="'$argumento'"
		fi

		lista_argumentos="$lista_argumentos $argumento"
		
	done

	clear
	
	comando="'$caminho_java' -Xdock:name=Portugol-Studio -Dvisualvm.display.name=Portugol-Studio -jar inicializador-ps.jar $lista_argumentos"

	cd "$caminho_portugol"

	sh -c "$comando"
else

	cd "$caminho_portugol"

	"$caminho_java" -jar inicializador-ps.jar "$@"

fi
