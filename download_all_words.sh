#!/bin/bash
account=$1

directionay="json/${Language}"
directionay_no_txt="txt"

for lang in ami trv
do
	declare -A lang_id=( ["ami"]="2" ["trv"]="33")
	while read -r word;
	do
	    bash download_one_word.sh "${account}" "$lang" "${lang_id[$lang]}" "${word}"
	done < "${directionay_no_txt}/${lang}.word.txt"
done
