echo Creating target/understanding-oss-gcc-2016-html5.pdf
asciidoctor -a allow-uri-read -r asciidoctor-pdf -b pdf src/docs/understanding-oss-gcc-2016.adoc -o target/understanding-oss-gcc-2016-html5.pdf
echo Creating target/understanding-oss-all-html5.pdf
asciidoctor -a allow-uri-read -r asciidoctor-pdf -b pdf  src/docs/understanding-oss-all.adoc -o target/understanding-oss-all-html5.pdf
