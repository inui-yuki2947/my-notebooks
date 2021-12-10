# GitHub

## リポジトリ

- リポジトリ名は、ケバブケースを推奨。
  [gitリポジトリの命名規則](https://zenn.dev/iwatos/articles/cb79814a4b31ed)

## GitHub CLI

### 概要

- GitHubのCLIとして、「GitHub CLI」がある。
- インストール

  ```bash
  brew install gh
  gh auth login
  ```

### 書式

- 書式

  ```bash
  gh コマンド サブコマンド
  ```

- 例

  ```bash
  gh pr checkout XXX
  ```

## GitHub Actions

### 概要

- [GitHub Actions Documentation - GitHub Docs](https://docs.github.com/en/actions)
- `.github/workflows`ディレクトリに、ファイルを作成する。

### 書式

- 書式

  ```yml
  name: ワークフロー名（任意）
  on: [ワークフローのトリガー]
  jobs:
    ジョブ名:
      runs-on: 実行環境
      steps:
        - name: 名前
          uses: 使用するアクション
          run: 実行するコマンド
           ...
  ```
