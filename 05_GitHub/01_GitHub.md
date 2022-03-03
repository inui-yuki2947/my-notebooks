# GitHub

## リポジトリ

- リポジトリ名は、ケバブケースを推奨。
  [gitリポジトリの命名規則](https://zenn.dev/iwatos/articles/cb79814a4b31ed)

## Branch protection

### おすすめ設定

- Require a pull request before merging
  - Require approvals
- Require status checks to pass before merging
  - Require branches to be up to date before merging
- Include administrators（これをチェックすると、管理者もこのルールを無視できなくなる）

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
