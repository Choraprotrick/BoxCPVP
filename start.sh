#!/bin/bash

# Define a versão do Minecraft
VERSION="1.20.1"
BUILD=$(curl -s https://api.papermc.io/v2/projects/paper/versions/$VERSION | jq -r '.builds[-1]')
JAR_NAME="paper-$VERSION-$BUILD.jar"

echo "Baixando PaperMC versão $VERSION (build $BUILD)..."

# Baixa o server.jar mais recente da versão escolhida
curl -o server.jar https://api.papermc.io/v2/projects/paper/versions/$VERSION/builds/$BUILD/downloads/$JAR_NAME

# Aceita o EULA
echo "eula=true" > eula.txt

# Inicia o servidor
java -Xmx1G -Xms1G -jar server.jar nogui
