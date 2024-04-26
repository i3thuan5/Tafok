# Tafok
[族語辭典](https://e-dictionary.ilrdf.org.tw/)下載程式。Tafok有沙子也有「億」的意思（個十百千萬的那個億）。

## 人工下載

```bash
soffice --headless --convert-to txt:Text --outdir . ami.odt
cat ami.txt | grep -e '（[）★]'  | sed 's/（.*//g' | grep -v [0-9] > ami.word.txt
curl -F "FMT=1" -F account=<account> -F TribesCode=2 \
	-F "qw=teker ni Idek" https://e-dictionary.ilrdf.org.tw/wsReDictionary.htm \
	| jq  && echo
```
