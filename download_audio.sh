#!/bin/bash

set -eu

result="audio_list.txt"
cat ${result} \
	| grep -v null \
	| sort -u \
	| sed 's/^"\(.*\)"$/\1/g'
	| wget --input-file - --no-host-directories --force-directories
