#!/bin/sh
java -jar packwiz-installer-bootstrap.jar -g -s server https://gamesiati.github.io/kirisute-gomen-mc/pack.toml \
&& \
java -Xmx2G -jar fabric-server-mc.1.21.4-loader.0.16.12-launcher.1.0.3.jar nogui
