#!/bin/bash
echo "eula=true" > eula.txt
java -Xmx1G -Xms1G -jar server.jar nogui
