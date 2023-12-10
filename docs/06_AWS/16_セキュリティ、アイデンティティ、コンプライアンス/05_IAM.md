# AWS/セキュリティ、アイデンティティ、コンプライアンス/IAM

## 共通

### 概要

- IAM（Identity and Access Management）は、AWSにおける認証機能。
- [IAM とは - AWS Identity and Access Management](https://docs.aws.amazon.com/ja_jp/IAM/latest/UserGuide/introduction.html)

### IAMユーザー

- AWS CLIやAWS SDKでは、IAMユーザーごとに作成できる**アクセスキーID**と**シークレットアクセスキー**を使用する。

### IAMロール

- 「AWSのリソースに付与するもの」で、「IAMロール」は、IAMポリシーをグルーピングしたもの。
- 「信頼されたエンティティ」とは、ロールをアタッチできるサービス。

### IAMポリシー

- 「IAMポリシー」は、実行者がどのサービスにアクセスできるかを設定する機能。
- よく使うものは、AWS管理ポリシーに用意されている。
