#!/bin/bash

set -eu

directionay_no_json="json/"
result="audio_list.txt"
rm -f "${result}"

for file_path in `find ${directionay_no_json} -type f`
do
	cat json/ami/cangra.json \
		| jq '.GenericData.DATA[].File.Path' \
		>> "${result}"
	cat json/ami/cangra.json \
		| jq '.GenericData.DATA[].Explanation.Sentence?.File.Path' \
		>> "${result}"
	cat json/ami/cangra.json | jq '.GenericData.DATA[].Explanation[]?.Sentence?.File.Path' \
		>> "${result}"
done
