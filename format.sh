#!/bin/bash

find . -name "*.md" | while read file; do
  title=$(basename "$file" .md)
  gsed -i "1c# ${title:3}" "$file"
done

markdownlint -f .
