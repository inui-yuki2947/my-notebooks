# AWS/ネットワーキングとコンテンツ配信/Amazon API Gateway

## 共通

### 概要

- **Amazon API Gateway**は、APIの作成、配布、監視、保護を簡単に行えるサービスである。
- Amazon API Gatewayでは、下記のAPIが作成できる。
  - **REST API**
  - **HTTP API**
  - **Websocket API**
- [Amazon API Gateway とは何ですか? - Amazon API Gateway](https://docs.aws.amazon.com/ja_jp/apigateway/latest/developerguide/welcome.html)

### ステージ

- **ステージ**は、APIのライフサイクル状態への論理的なリファレンスである。（例：dev、prod、beta、v2など）

### APIエンドポイントタイプ

| 種類                          | 概要                                          |
| ----------------------------- | --------------------------------------------- |
| リージョンAPIエンドポイント   | API Gatewayと同一リージョン内のクライアント。 |
| エッジ最適化APIエンドポイント | 地理的に分散されたクライアント。              |
| プライベートAPIエンドポイント | VPC内のクライアント。                         |

### その他

- Amazon API Gatewayでは、リクエストマッピングテンプレートを使用して、モック統合のレスポンスを選択することができる。
