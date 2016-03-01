#!/bin/sh

caminho_script=$(readlink -f "$0")
caminho_portugol=$(dirname "$caminho_script")
caminho_java="$caminho_portugol/java/java-linux/bin/java"

numero_parametros=$#


if [ $numero_parametros -gt 0 ]; then

	lista_argumentos=""

	for argumento; do	

		if [ -f "$argumento" ]; then

			argumento=$(readlink -f "$argumento")
	
			argumento="'$argumento'"
		fi

		lista_argumentos="$lista_argumentos $argumento"
		
	done

	clr
	
	comando="'$caminho_java' -Dvisualvm.display.name=Portugol-Studio -jar inicializador-ps.jar $lista_argumentos"

	cd "$caminho_portugol"

	sh -c "$comando"
else

	cd "$caminho_portugol"

	"$caminho_java" -jar inicializador-ps.jar "$@"

fi
