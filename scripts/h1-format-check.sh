#!/bin/bash

# 引数のファイルについて、1行目が「# ファイル名（先頭の番号を除く）」になっているかチェックする。
status=0
files=$(find . -name "*.md" -not -name "README.md")
while read -r file; do
  title=$(basename "$file" .md | sed "s/^[0-9]*_/# /")
  h1=$(head -n 1 "$file")
  if [[ "$h1" != "$title" ]]; then
      echo "error in $file: \"$h1\" should be \"$title\"" >&2
      status=1
  fi
done <<< "$files"
exit $status
