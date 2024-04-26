# Tafok
[族語辭典](https://e-dictionary.ilrdf.org.tw/)下載程式。Tafok有沙子也有「億」的意思（個十百千萬的那個億）。

## 人工下載

```bash
bash download_odt.sh
bash reformat_to_txt.sh
cat ami.txt | grep -e '（[）★]'  | sed 's/（.*//g' | grep -v [0-9] > ami.word.txt
curl -F "FMT=1" -F account=<account> -F TribesCode=2 \
	-F "qw=teker ni Idek" https://e-dictionary.ilrdf.org.tw/wsReDictionary.htm \
	| jq  && echo
```
