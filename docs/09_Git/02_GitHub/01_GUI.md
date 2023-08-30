# Git/GitHub/GUI

## Settings

### Emails

| 項目                                           | 概要                                                         |
| ---------------------------------------------- | ------------------------------------------------------------ |
| Keep my email addresses private                | Web上でGit操作をしたときに、<br />メールアドレスとして`<ID><GitHubアカウント名>@users.noreply.github.com`が使用される。 |
| Block command line pushes that expose my email | プライベートなメールアドレスで行ったコミットがプッシュできなくなる。 |

- [【GitHub】コミットメールアドレスをプライベート（非公開）にする【Git】 - AI can fly !!](https://ai-can-fly.hateblo.jp/entry/github-email-private)

### Personal access tokens

- Personal access tokensは、GitHub APIまたはコマンドラインを使用するときに、GitHubへの認証でパスワードの代わりに使用される。
- [個人アクセストークンを使用する - GitHub Docs](https://docs.github.com/ja/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)

## Issue, PRの検索

### ブランチ名

| 書式              | 概要                                         |
| ----------------- | -------------------------------------------- |
| `head:ブランチ名` | 元のブランチが、指定したブランチである。     |
| `base:ブランチ名` | マージ先ブランチが、指定したブランチである。 |

### 作成日時

| 書式                   | 概要                                   |
| ---------------------- | -------------------------------------- |
| `created:<YYYY-MM-DD` | 作成日時が、指定した日付より前である。 |
| `created:>YYYY-MM-DD` | 作成日時が、指定した日付より後である。 |

### 参考資料

- [Issue およびプルリクエストを検索する - GitHub Docs](https://docs.github.com/ja/search-github/searching-on-github/searching-issues-and-pull-requests)

## Branch protection

### おすすめ設定

- Require a pull request before merging
  - Require approvals
- Require status checks to pass before merging
  - Require branches to be up to date before merging
- Include administrators（これをチェックすると、管理者もこのルールを無視できなくなる）

## フォーク

- 「フォーク」は、リモートリポジトリを自分のアカウントの**リモートリポジトリ**にコピーすること。

## その他

### マージ方法

- [GithubでのWeb上からのマージの仕方3種とその使いどころ - Qiita](https://qiita.com/ko-he-8/items/94e872f2154829c868df)
