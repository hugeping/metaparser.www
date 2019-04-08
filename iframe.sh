cat index.html | sed -e '/<link href="css\/styles.css"/a <link href="css\/styles-iframe.css" rel="stylesheet">' -e 's|index\.html|index-iframe\.html|g' -e '/<div id="disqus_thread">/,/<\/noscript>/d'  -e '/<div style="overflow-x: visible" class="donate">/,/^<\/div>/d'> index-iframe.html
sed -e '/href="lib\/mp.css">/a <link rel="stylesheet" href="lib\/mp-iframe.css">' -e '/<body>/a <div class="status TextGrid"><a href="\/index-iframe.html"><b>назад </b></a></div>' -e 's|index\.html|index-iframe\.html|g' games/index.html> games/index-iframe.html
for f in games/*; do
	if test -f $f/index.html; then
		cat $f/index.html | sed -e '/<link rel="stylesheet"/a <link rel="stylesheet" href="..\/style-iframe.css" type="text/css" media="all">' -e '/<body>/a <div class="status TextGrid"><a href="\/index-iframe.html"><b>назад </b></a></div>' -e 's|index\.html|index-iframe\.html|g' > $f/index-iframe.html
	fi
done
