#!/bin/bash

set -eu

directionay_no_json="json/"
result="audio_list.txt"
rm -f "${result}"

for file_path in `find ${directionay_no_json} -type f`
do
	cat "${file_path}" \
		| jq '.GenericData.DATA[].File?.Path' \
		>> "${result}"
	cat "${file_path}" \
		| jq '.GenericData.DATA[].Explanation?.Sentence?.File.Path' \
		>> "${result}"
	cat "${file_path}" \
		| jq '.GenericData.DATA[].Explanation?[]?.Sentence?.File.Path' \
		>> "${result}"
done
