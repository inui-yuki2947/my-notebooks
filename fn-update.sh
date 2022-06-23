#!/usr/bin/env bash
set -e

# ファイル・ディレクトリの連番を綺麗にし、サイドバーを再生成する。
# 第1引数として、処理対象のディレクトリを指定できる。（省略時は../docsディレクトリ）

# 実行例
# scripts/fn-update.sh
# scripts/fn-update.sh docs/01_Linux

docs_dir=$(dirname "$0")/docs
target_dir="${1:-$docs_dir}"

# 連番を綺麗にする。
fn-update "$target_dir"

# サイドバーを再生成する。
"$(dirname "$0")/update-sidebar.sh"
