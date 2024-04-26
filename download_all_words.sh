#!/bin/bash

set -eu

account=$1

directionay_no_txt="txt"

for lang in ami tay pwn bnn pyu dru tsu xsy tao ssf ckv trv ais sdq sxr xnb
do
	declare -A lang_id=(
		["ami"]="2"
		["tay"]="6"
		["pwn"]="24"
		["bnn"]="22"
		["pyu"]="38"
		["dru"]="28"
		["tsu"]="35"
		["xsy"]="13"
		["tao"]="42"
		["ssf"]="14"
		["ckv"]="34"
		["trv"]="33"
		["ais"]="43"
		["sdq"]="16"
		["sxr"]="37"
		["xnb"]="36"
	)
	while read -r word;
	do
	    bash download_one_word.sh "${account}" "$lang" "${lang_id[$lang]}" "${word}"
	done < "${directionay_no_txt}/${lang}.word.txt"
done
