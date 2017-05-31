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


comando="'$caminho_java' -Xms128M -Xmx512M -Xdock:name=Portugol-Studio -Xdock:icon=../portugol-studio.icns -Dvisualvm.display.name=Portugol-Studio -jar aplicacao/portugol-studio.jar"

cd "$caminho_portugol"

sh -c "$comando"