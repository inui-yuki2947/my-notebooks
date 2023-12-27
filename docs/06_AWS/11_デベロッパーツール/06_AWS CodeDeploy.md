# AWS/デベロッパーツール/AWS CodeDeploy

## 共通

### 概要

- **AWS CodeDeploy**は、AWSサービスへのアプリケーションのデプロイを自動化するサービスである。
- ビルド先として、EC2、コンテナ、Lambda、オンプレミスサーバーがある。
- `Appspec.yml`ファイルで、デプロイにおける環境変数を定義できる。
- [とは何ですか CodeDeploy? - AWS CodeDeploy](https://docs.aws.amazon.com/ja_jp/codedeploy/latest/userguide/welcome.html)

### デプロイ方法（EC2）

| 種類        | 概要                                                         |
| ----------- | ------------------------------------------------------------ |
| All at Once | 全てのサーバーへ一気にデプロイする。                         |
| HalfAtATime | 半分のサーバーへデプロイし、デプロイ中はもう半分のサーバーで運用する。 |
| OneAtATime  | サーバー1つずつデプロイする。                                |
