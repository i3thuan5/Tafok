#!/bin/bash

Language=$1

directionay="odt/"
mkdir -p "${directionay}"

for lang in ami trv
do
	wget "https://e-dictionary.ilrdf.org.tw/${Language}/download/odt/1.htm" \
		-O "${directionay}/${Language}.odt"
done
