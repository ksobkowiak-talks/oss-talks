
#!/bin/sh

mkdir -p target
rm -rf target/images
rm -rf target/assets
rm -rf target/reveal.js
cp -r src/docs/images target/
cp -r src/docs/assets target/
cp -r .reveal.js/ target/reveal.js/
echo "Building src/docs/understanding-oss-gcc-2016.adoc (html5)"
asciidoctor -a allow-uri-read -b html5 -a toc2 -o target/understanding-oss-gcc-2016-html5.html src/docs/understanding-oss-gcc-2016.adoc
echo "Building src/docs/understanding-oss-all.adoc (html5)"
asciidoctor -a allow-uri-read -b html5 -a toc2 -o target/understanding-oss-all-html5.html src/docs/understanding-oss-all.adoc
