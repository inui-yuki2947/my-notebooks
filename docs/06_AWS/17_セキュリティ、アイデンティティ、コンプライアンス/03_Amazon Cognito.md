# AWS/セキュリティ、アイデンティティ、コンプライアンス/Amazon Cognito

## 共通

### 概要

- **Amazon Cognito**というサービスを利用することで、各SNSとの認証連携が簡単に実現できる。
- **IDフェデレーション**は、複数の組織（情報システムの管理範囲）にまたがって利用できるようにしたアイデンティティ情報である。
- **Security Assertion Markup Language（SAML）**は、特にアイデンティティプロバイダーとサービスプロバイダーの間で認証および認可データを交換するための公開標準である。
- [Amazon Cognito とは - Amazon Cognito](https://docs.aws.amazon.com/ja_jp/cognito/latest/developerguide/what-is-amazon-cognito.html)

### Amazon Cognitoユーザープール

- **Amazon Cognitoユーザープール**は、ウェブおよびモバイルアプリケーションの認証と承認のためのユーザーディレクトリである。
- アプリケーションの観点から見ると、Amazon Cognitoユーザープールは、OpenID Connect（OIDC）IDプロバイダー（IdP）である。
- サインアップ・サインインをトリガーに、AWS Lambda関数を実行することができる。

### Amazon Cognito IDプール

- **Amazon Cognito IDプール**は、AWSリソースへ**認可**を与えるための一時認証情報を払い出す。
