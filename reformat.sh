#!/usr/bin/env bash
set -e

# 書式・ファイル名などを綺麗にし、サイドバーを再生成する。
# 第1引数として、処理対象のディレクトリを指定できる。（省略時は../docsディレクトリ）

# 実行例
# scripts/reformat.sh
# scripts/reformat.sh docs/01_Linux

docs_dir=$(dirname "$0")/docs
target_dir="${1:-$docs_dir}"

# 書式を綺麗にする。（lintに引っかからないように、先にh1を修正する）
fn-update "$target_dir"
md-h1 -f "$target_dir"
markdownlint -f "$target_dir"

# サイドバーを再生成する。
"$(dirname "$0")/update-sidebar.sh"
