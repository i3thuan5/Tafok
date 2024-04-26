#!/bin/bash

set -eu

directionay="odt"
mkdir -p "${directionay}"

for lang in ami tay pwn bnn pyu dru tsu xsy tao ssf ckv trv ais sdq sxr xnb
do
	wget "https://e-dictionary.ilrdf.org.tw/${lang}/download/odt/1.htm" \
		-O "${directionay}/${lang}.odt"
done
