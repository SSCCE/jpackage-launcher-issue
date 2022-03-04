#!/bin/bash
rm -rf mods image pkg
javac  -d ./mods module-info.java example/Main.java example/Secondary.java
jlink --module-path ./mods --add-modules example --output ./image
jpackage --dest pkg --name main --module example/example.Main --runtime-image ./image --win-console --add-launcher secondary=./secondary.properties

