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
caminho_aplicacao="$caminho_portugol/aplicacao"
caminho_java="$caminho_portugol/java/java-mac/bin/java"

clear
clear
clear

numero_parametros=$#

comando="'$caminho_java' -server -Xms128m -Xmx512m -Xdock:name=Portugol-Studio -Dvisualvm.display.name=Portugol-Studio -jar  portugol-console.jar"

if [ $numero_parametros -gt 0 ]; then

	if [ -f "$1" ]; then

		arquivo=$(read_lnk "$1")
	else

		arquivo="$1"
	fi

	shift

	comando="$comando '$arquivo' $@"
fi

cd "$caminho_aplicacao"
sh -c "$comando"
