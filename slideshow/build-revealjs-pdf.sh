./build-revealjs.sh
cd target/
#../.deck2pdf/bin/deck2pdf --profile=revealjs slides_revealjs.html slides_deck2pdf.pdf
echo Creating target/understanding-oss-gcc-2016.pdf
../.decktape/bin/phantomjs ../.decktape/decktape.js reveal understanding-oss-gcc-2016.html understanding-oss-gcc-2016.pdf
echo Creating target/understanding-oss-all.pdf
../.decktape/bin/phantomjs ../.decktape/decktape.js reveal understanding-oss-all.html understanding-oss-all.pdf
cd ..
