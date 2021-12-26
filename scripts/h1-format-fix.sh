#!/bin/bash

# 引数のファイルについて、1行目を「# ファイル名（先頭の番号を除く）」に変更する。
find . -name "*.md" -not -name "README.md" | while read -r file; do
  title=$(basename "$file" .md | sed "s/^[0-9]*_//")
  gsed -i "1c# $title" "$file"
done
