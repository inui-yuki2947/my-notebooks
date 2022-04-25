#!/bin/bash

# 「docsify」「markdownlint-cli」をインストールする。
npm install -g docsify-cli
npm install -g markdownlint-cli

# コミット前のGitフックを設定する。
git config core.hooksPath .githooks
