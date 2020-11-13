#!/bin/bash
set -e

if [-z "$DICT_PATH"]
	$DICT_PATH = $(pwd)/luna_pinyin.sogou.dict.yaml
fi

fd '\.txt$' rime_dicts | parallel -j 1 'cat {} >> /tmp/tmp-luna_pinyin.sogou.dict.yaml'
cat <<EOF > luna_pinyin.sogou.dict.yaml
---
name: luna_pinyin.sogou
version: "$(date)"
sort: by_weight
use_preset_vocabulary: true
...

EOF
cd /tmp
sort tmp-luna_pinyin.sogou.dict.yaml | uniq >> $DICT_PATH
rm tmp-luna_pinyin.sogou.dict.yaml
