#!/bin/sh

echo "Cloning asciidoctor-reveal.js"
git clone git://github.com/asciidoctor/asciidoctor-reveal.js.git .asciidoctor-reveal.js
echo "Cloning reveal.js"
git clone git://github.com/hakimel/reveal.js.git .reveal.js
cd .reveal.js
git checkout 3.3.0
cd ..
echo "Cloning decktape"
git clone --depth 1 https://github.com/astefanutti/decktape.git .decktape
echo "Downloading phantomjs-linux-debian8-x86-64"
curl -L http://astefanutti.github.io/decktape/downloads/phantomjs-linux-debian8-x86-64 -o .decktape/bin/phantomjs
chmod +x .decktape/bin/phantomjs

## Necessary in case of following error while calling phantomjs under Ubuntu
## error while loading shared libraries: libicui18n.so.52: cannot open shared object file: No such file or directory
# curl -L http://security.ubuntu.com/ubuntu/pool/main/i/icu/libicu52_52.1-3ubuntu0.4_amd64.deb -o libicu52_52.1-3ubuntu0.4_amd64.deb
# sudo dpkg -i libicu52_52.1-3ubuntu0.4_amd64.deb
