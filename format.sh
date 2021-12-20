#!/bin/bash

# Markdownのファイル名を、h1の見出し名にする。
find . -name "*.md" | while read -r file; do
  title=$(basename "$file" .md)
  gsed -i "1c# ${title:3}" "$file"
done

markdownlint -f .
