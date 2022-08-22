#!/bin/sh
OUTFILE="index.html"
echo '<!DOCTYPE html>' > $OUTFILE
echo '<html>' >> $OUTFILE
echo '<head>' >> $OUTFILE
echo '<meta charset="utf-8">' >> $OUTFILE
echo '<title>Directory Listing</title>' >> $OUTFILE
echo '</head>' >> $OUTFILE
echo '<body>' >> $OUTFILE
FILES=`/bin/ls -1F`
echo '<h1>Directory Listing</h1>' >> $OUTFILE
echo '<hr>' >> $OUTFILE
for a in $FILES; do
   echo '<a href="'$a'">'$a'</a><br>' >> $OUTFILE
done

echo '</body>' >> $OUTFILE
echo '</html>' >> $OUTFILE
