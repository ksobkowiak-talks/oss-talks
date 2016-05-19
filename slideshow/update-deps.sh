#!/bin/sh

echo "Updating asciidoctor-reveal.js"
cd .asciidoctor-reveal.js
git pull
cd ..
echo "Updating reveal.js"
cd .reveal.js
git pull
cd ..
echo "Updating decktape"
cd .decktape
git pull
echo "Downloading phantomjs-linux-debian8-x86-64"
curl -L http://astefanutti.github.io/decktape/downloads/phantomjs-linux-debian8-x86-64 -o bin/phantomjs
chmod +x bin/phantomjs
cd ..
