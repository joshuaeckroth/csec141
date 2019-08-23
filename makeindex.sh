#!/bin/sh

ls | grep -v makeindex.sh | grep -v CNAME | grep -v index.html | \
perl -e 'print "<html><body><pre>"; while(<>) { chop $_; print "<a href=\"./$_\">$_</a><br/>";} print "</pre></body></html>"' > index.html
