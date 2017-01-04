#!/bin/bash

# Check a list of URLs in a file. 
# Usage: ./linkcheck.sh path/to/file > path/to/output/file

URLfile="$1"
theURLs=( "$(cat $URLfile)" )

for i in ${theURLs[@]}
do
	#echo -n $i 
	#curl --progress-bar -I -X GET $i | head -n 1|cut -d$' ' -f2
	echo -n $i,`curl --progress-bar -I -X GET $i | head -n 1 | cut -d$' ' -f2`
echo ""
done



