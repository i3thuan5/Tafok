#!/bin/bash

set -eu

directionay_no_json="json/"
result="audio_list.txt"
rm -f "${result}"

while IFS= read -r -d '' file_path
do
	cat "${file_path}" \
		| jq --raw-output '.GenericData.DATA[]?.File?.Path'\
		>> "${result}"
	cat "${file_path}" \
		| jq --raw-output '.GenericData.DATA[]?.Explanation?.Sentence?.File?.Path' \
		>> "${result}"
	cat "${file_path}" \
		| jq --raw-output '.GenericData.DATA[]?.Explanation?[]?.Sentence?.File?.Path' \
		>> "${result}"
done <   <(find ${directionay_no_json} -type f)
