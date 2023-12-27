# AWS/ネットワーキングとコンテンツ配信/ELB

## 共通

### 概要

- **ELB（Elastic Load Balancing）**は、AWSのロードバランサー。
- ELBに登録されたEC2インスタンスを、**バックエンドインスタンス**と呼ぶ。
- [Elastic Load Balancing とは? - Elastic Load Balancing](https://docs.aws.amazon.com/ja_jp/elasticloadbalancing/latest/userguide/what-is-load-balancing.html)

### 種類

| 種類                            | レイヤー                 | 概要                                                         |
| ------------------------------- | ------------------------ | ------------------------------------------------------------ |
| Classic Load Balancer (CLB)     | レイヤー4<br />レイヤー7 | 2022年にサービス終了。                                       |
| Application Load Balancer (ALB) | レイヤー7                | **SSL/TLS終端**とすることができる。<br />**スティッキーセッション**を使用すると、<br />セッションが続いている間は同じクライアントを同じサーバへ誘導できる。 |
| Network Load Balancer (NLB)     | レイヤー4                | 優れたパフォーマンスと**静的IP**が必要な場合に使用する。     |
| Gateway Load Balancer (GLB)     | レイヤー3                |                                                              |

### その他

- アクセスログを有効化すると、アクセスログがS3にアップロードされる。
- ELBは、バックエンドインスタンスが正常に動作しているか**ヘルスチェック**を行う。
- **デュアルスタック**とは、 単一機器にIPv4とIPv6という仕様の異なるプロトコルスタックを共存させる仕組み。
- **クロスゾーン負荷分散**を使用すると、複数のAZに登録された全てのインスタンスに対して、リクエストを均等に分散する。
- **Connection Draining**という機能を用いると、サーバーの処理が完了するまで、バックエンドインスタンスの登録解除を遅延させることができる。
