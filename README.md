# Introduction
Generates a "luna_pinyin" dictionary for Rime by filtering `scel` dictionaries from available ones of [搜狗细胞词库](https://pinyin.sogou.com/dict).

"luna_pinyin.sogou.dict.yaml" is used in [my rime config](https://github.com/15cm/rime-config). The maintained dictionary is generated by a regexp filter `(计算机|日本|官方推荐|大全).*\.scel$`.

# Release
Due to [limitations of Github's git lfs](https://help.github.com/en/github/managing-large-files/about-storage-and-bandwidth-usage), please go to the [release page](https://github.com/15cm/rime-sogou-dictionaries/releases) for the generated rime dictionary.

# Dependencies
- fd
- GNU parallel
- python2
- [dotnet-core](https://dotnet.microsoft.com/download/dotnet-core)

## macOS

```shell
brew install fd parallel
```

# Usage
The scripts are tested under Linux and should work for Linux/Mac.

Steps:
1. Runs `./bootstrap.sh` to initialize [imewlconverter](https://github.com/studyzy/imewlconverter).
2. Runs `./make-dict.sh` for help and then follows the instructions.

# Credits
- [ThesaurusSpider](https://github.com/WuLC/ThesaurusSpider)
- [imewlconverter](https://github.com/studyzy/imewlconverter)
