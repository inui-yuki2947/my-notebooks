#!/usr/bin/env bash
set -e

# 「docsify」「markdownlint-cli」をインストールする。
sudo npm install -g docsify-cli
sudo npm install -g markdownlint-cli

# コミット前のGitフックを設定する。
git config core.hooksPath .githooks
