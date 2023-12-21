# AWS/ネットワーキングとコンテンツ配信/ELB

## 共通

### 概要

- **ELB（Elastic Load Balancing）**は、AWSのロードバランサー。
- ELBに登録されたEC2インスタンスを、**バックエンドインスタンス**と呼ぶ。
- ELBは、バックエンドインスタンスが正常に動作しているか**ヘルスチェック**を行う。
- **スティッキーセッション**を使用すると、セッションが続いている間は同じクライアントを同じサーバへ誘導できる。
- **Connection Draining**という機能を用いると、サーバーの処理が完了するまで、バックエンドインスタンスの登録解除を遅延させることができる。
- **クロスゾーン負荷分散**を使用すると、複数のAZに登録された全てのインスタンスに対して、リクエストを均等に分散する。
- ELBをSSL終端とすることができる。
- [Elastic Load Balancing とは? - Elastic Load Balancing](https://docs.aws.amazon.com/ja_jp/elasticloadbalancing/latest/userguide/what-is-load-balancing.html)

### 種類

| 種類                            | 概要                                      |
| ------------------------------- | ----------------------------------------- |
| Classic Load Balancer (CLB)     | 標準的なロードバランシングを提供する。    |
| Application Load Balancer (ALB) | レイヤー7（リクエストレベル）で動作する。 |
| Network Load Balancer (NLB)     | レイヤー4で動作する。                     |
| Gateway Load Balancer (GLB)     | レイヤー3で動作する。                     |

### ALB

- 柔軟なアプリケーション管理とTLS終端が必要な場合に使用する。
- アクセスログを有効化すると、アクセスログがS3にアップロードされる。
- **デュアルスタック**とは、 単一機器にIPv4とIPv6という仕様の異なるプロトコルスタックを共存させる仕組み。

### NLB

- 優れたパフォーマンスと静的IPが必要な場合に使用する。
