# GitHub Actions

## 共通

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
