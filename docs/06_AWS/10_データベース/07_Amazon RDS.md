# AWS/データベース/Amazon RDS

## 共通

### 概要

- **Amazon RDS（Relational Database Service）**は、主要なRDB製品を利用できるサービス。
- **リードレプリカ**を使用することで、読み取りスループットを向上させることができる。
- プライマリインスタンスに障害が起きた場合は、リードレプリカがプリマリインスタンスに昇格する。
- [Amazon Relational Database Service (Amazon RDS) とは - Amazon Relational Database Service](https://docs.aws.amazon.com/ja_jp/AmazonRDS/latest/UserGuide/Welcome.html)

### バックアップと復元

- RDSの復元方法には、主に次の2つがある。
  - 通常のリストア：スナップショットからデータベースインスタンスを復元
  - **ポイントインタイムリカバリ**：バックアップのデータベースとトランザクションログが残っている範囲内の特定の日時時点にデータを復元

### Amazon RDS Proxy

- **Amazon RDS Proxy**を使用すると、アプリケーションでデータベース接続をプールおよび共有して、アプリケーションのスケーリング能力を向上させることができる。

### Amazon Aurora

- **Amazon Aurora**は、PostgreSQLやMySQLと互換性のある、AWS固有のデータベースサービスである。
- **Auroraマルチマスタークラスター**は、全てのデータベースインスタンスでデータの読み取り・書き込み処理を行う構成のことである。
- **Amazon Aurora Global Database**を使用すると、複数リージョンにAuroraクラスターをデプロイすることができる。
- **Aurora Serverless**は、通常はデータベースインスタンスが起動しておらず、SQLのリクエストを受け取って初めてデータベースインスタンスが起動するサービスである。
- [Amazon Aurora とは - Amazon Aurora](https://docs.aws.amazon.com/ja_jp/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
