#!/bin/bash
account=$1

directionay="json/${Language}"
directionay_no_txt="txt"

for lang in ami trv
do
	while read -r line;
	do
	    echo -e "$line\n"
	done < "${directionay_no_txt}/${lang}.word.txt"
done
