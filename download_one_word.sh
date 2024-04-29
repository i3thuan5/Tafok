#!/bin/bash

set -euo pipefail

account="$1"
Language="$2"
TribesCode="$3"
Query="$4"

directionay="json/${Language}"

mkdir -p "${directionay}"

curl -F "FMT=1" -F account="${account}" -F TribesCode="${TribesCode}" \
	-F "qw=${Query}" https://e-dictionary.ilrdf.org.tw/wsReDictionary.htm \
	| jq > "${directionay}/${Query}.json"
