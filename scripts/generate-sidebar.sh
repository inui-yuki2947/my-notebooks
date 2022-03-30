#!/bin/bash
set -e

# 指定したディレクトリにあるmdファイルについて、リンク集を作成する。
# 第1引数として、処理対象のディレクトリを指定する。
# 第2引数として、先頭につけるインデントを指定する。
function md-tree() {
  local directory="$1"
  local indent="$2"

  files=$(find "$directory" -type f -depth 1 -name "*.md" | sort)
  while read -r file; do
    [ -n "$file" ] || continue
    echo "${indent}- [$(basename "$file")](<${file}>)"
  done <<< "$files"

  sub_directories=$(find "$1" -type d -depth 1 | sort)
  while read -r sub_directory; do
    [ -n "$sub_directory" ] || continue
    echo "${indent}- $(basename "$sub_directory")"
    md-tree "$sub_directory" "${indent}  "
  done <<< "$sub_directories"
}

# 現在のファイル構成をもとに、サイドバー用のmdファイルを生成する。
cd "$(dirname "$0")/../docs"
md-tree . > _sidebar.md
