#!/bin/bash
set -e

# 現在のファイル構成をもとに、サイドバー用のmdファイルを生成する。
cd "$(dirname "$0")/../docs"
content=$(find . -type f -name "*.md" | sort | while read -r path; do echo "- [${path}](<${path}>)"; done)
(echo "- [Home](/)"; echo "$content") > _sidebar.md
