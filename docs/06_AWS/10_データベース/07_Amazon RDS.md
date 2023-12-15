# AWS/データベース/Amazon RDS

## 共通

### 概要

- **Amazon RDS（Relational Database Service）**は、主要なRDB製品を利用できるサービス。
- [Amazon Relational Database Service (Amazon RDS) とは - Amazon Relational Database Service](https://docs.aws.amazon.com/ja_jp/AmazonRDS/latest/UserGuide/Welcome.html)

### リードレプリカ

- **リードレプリカ**を使用することで、読み取りスループットを向上させることができる。
- プライマリインスタンスを削除した場合、プライマリインスタンスに障害が起きた場合は、リードレプリカがプライマリインスタンスに昇格する。

### バックアップと復元

- RDSの復元方法には、主に次の2つがある。
  - 通常のリストア：スナップショットからデータベースインスタンスを復元
  - **ポイントインタイムリカバリ**：バックアップのデータベースとトランザクションログが残っている範囲内の特定の日時時点にデータを復元
- 自動バックアップ機能の保管期間は、最大35日である。
- **マルチAZ**とは、RDSを複数のAZに構築することを指す。
- データベースに障害が発生した場合、シングルAZではバックアップを利用して復元する必要があるが、
  マルチAZでは自動でフェイルオーバーが行われる。
- シングルAZのインスタンスでスナップショットを作成すると、IOが短時間中断を受ける可能性がある。

### Amazon RDS Proxy

- **Amazon RDS Proxy**を使用すると、アプリケーションでデータベース接続をプールおよび共有して、アプリケーションのスケーリング能力を向上させることができる。

### Amazon Aurora

- **Amazon Aurora**は、PostgreSQLやMySQLと互換性のある、AWS固有のデータベースサービスである。
- **Auroraマルチマスタークラスター**は、全てのデータベースインスタンスでデータの読み取り・書き込み処理を行う構成のことである。
- **Amazon Aurora Global Database**を使用すると、複数リージョンにAuroraクラスターをデプロイすることができる。
- **Aurora Serverless**は、通常はデータベースインスタンスが起動しておらず、SQLのリクエストを受け取って初めてデータベースインスタンスが起動するサービスである。
- [Amazon Aurora とは - Amazon Aurora](https://docs.aws.amazon.com/ja_jp/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
