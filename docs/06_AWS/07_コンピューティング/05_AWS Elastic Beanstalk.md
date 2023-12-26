# AWS/コンピューティング/AWS Elastic Beanstalk

## 共通

### 概要

- **AWS Elastic Beanstalk**は、少ない手順でWebアプリケーションやサービスをサーバーにデプロイでき、実行環境も管理できるサービスである。
  （cf. AWS CloudFormation、AWS Amplify）
- 設定ファイル（`.ebextensions`ファイル）を使用すると、高度なカスタマイズが可能になる。
- [AWS Elastic Beanstalk とは? - AWS Elastic Beanstalk](https://docs.aws.amazon.com/ja_jp/elasticbeanstalk/latest/dg/Welcome.html)

### デプロイ方法

| 種類               | 概要                                                         |
| ------------------ | ------------------------------------------------------------ |
| All at Once        | すべての既存インスタンスのデプロイを一気に実施する。         |
| Blue-Greenデプロイ | 本番環境と同等の本番環境を構築し、ロードバランサーの接続先を切り替える。 |

### ワーカー環境

- AWS Elastic Beanstalkでは、通常のWebサーバー環境のほかに、**ワーカー環境**が作成される。
