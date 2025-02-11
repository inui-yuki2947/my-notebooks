#!/usr/bin/env bash
set -e

if ! npm list -g --depth=0 docsify-cli &> /dev/null; then
  npm install -g docsify-cli
fi
if ! npm list -g --depth=0 markdownlint-cli &> /dev/null; then
  npm install -g markdownlint-cli
fi
git config core.hooksPath .githooks
