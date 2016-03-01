#!/bin/sh

caminho_script=$(readlink -f "$0")
caminho_portugol=$(dirname "$caminho_script")
caminho_aplicacao="$caminho_portugol/aplicacao"
caminho_java="$caminho_portugol/java/java-linux/bin/java"

clear
clear
clear

numero_parametros=$#

comando="'$caminho_java' -Xms128m -Xmx512m -Dvisualvm.display.name=Portugol-Studio -jar portugol-console.jar"

if [ $numero_parametros -gt 0 ]; then

	if [ -f "$1" ]; then

		arquivo=$(readlink -f "$1")
	else

		arquivo="$1"
	fi

	shift

	comando="$comando '$arquivo' $@"
fi

cd "$caminho_aplicacao"
sh -c "$comando"
