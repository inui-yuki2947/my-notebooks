#!/bin/bash
set -e

# 書式・ファイル名などを綺麗にし、サイドバーを再生成する。
# 第1引数として、処理対象のディレクトリを指定できる。（省略時は../docsディレクトリ）

# 実行例
# scripts/reformat.sh
# scripts/reformat.sh docs/01_Linux

docs_dir=$(dirname "$0")/docs
target_dir="${1:-$docs_dir}"
sidebar_file="${docs_dir}/_sidebar.md"

# 書式を綺麗にする。（lintに引っかからないように、先にh1を修正する）
[ -e "$sidebar_file" ] && rm "$sidebar_file"
fn-update "$target_dir"
md-h1 -f "$target_dir"
markdownlint -f "$target_dir"

# サイドバーを再生成する。（docsディレクトリからの相対パスで生成したいため、cdする）
cd "$docs_dir"
md-tree | grep -v '_sidebar\.md' | grep -v 'index\.html' > _sidebar.md
