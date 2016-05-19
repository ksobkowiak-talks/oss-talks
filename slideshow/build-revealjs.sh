
#!/bin/sh
echo "Building src/docs/slides.adoc (reveal.js and html5)"
mkdir -p target
rm -rf target/images
rm -rf target/assets
rm -rf target/reveal.js
cp -r src/docs/images target/
cp -r src/docs/assets target/
cp -r .reveal.js/ target/reveal.js/
asciidoctor -a allow-uri-read -b revealjs -T .asciidoctor-reveal.js/templates/slim -o target/understanding-oss-gcc-2016.html src/docs/understanding-oss-gcc-2016.adoc
asciidoctor -a allow-uri-read -b revealjs -T .asciidoctor-reveal.js/templates/slim -o target/understanding-oss-all.html src/docs/understanding-oss-all.adoc
