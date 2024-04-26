#!/bin/bash

set -eu

directionay="txt"
mkdir -p "${directionay}"

directionay_no_odt="odt"

for lang in ami tay pwn bnn pyu dru tsu xsy tao ssf ckv trv ais sdq sxr xnb
do
	soffice --headless --convert-to txt:Text --outdir "${directionay}" \
		"${directionay_no_odt}/${lang}.odt"
	cat "${directionay}/${lang}.txt" \
		| sed 's/參照 [^ ]\+ /\n/g' \
		| grep -e '（[）★]' \
		| sed 's/（.*//g' \
		| grep -v '[0-9]' \
		> "${directionay}/${lang}.word.txt"
done
