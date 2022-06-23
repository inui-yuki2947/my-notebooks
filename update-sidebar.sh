#!/usr/bin/env bash
set -e

# サイドバーを再生成する。

# 実行例
# scripts/update-sidebar.sh

# docsディレクトリからの相対パスで生成したいため、cdする。
cd "$(dirname "$0")/docs"
md-tree | grep -v '_sidebar\.md' | grep -v 'index\.html' > _sidebar.md
