# AWS/データベース/Amazon RDS

## 共通

### 概要

- **Amazon RDS（Relational Database Service）**は、主要なRDB製品を利用できるサービス。
- RDSストレージのオートスケーリングを使用すると、自動的に容量をスケールする。
- **Performance Insights**を使用すると、DBロード（DB負荷）をモニタリングできる。
- [Amazon Relational Database Service (Amazon RDS) とは - Amazon Relational Database Service](https://docs.aws.amazon.com/ja_jp/AmazonRDS/latest/UserGuide/Welcome.html)

### リードレプリカ

- **リードレプリカ**は、プライマリデータベースを読み取り専用として**非同期で**複製する。
- リードレプリカを使用することで、**読み取りスループット**を向上させることができる。
- **クロスリージョンリードレプリカ**は、異なるリージョンにリードレプリカを作成する。
- プライマリインスタンスを削除した場合、またがプライマリインスタンスに障害が起きた場合は、リードレプリカがプライマリインスタンスに昇格する。

### バックアップと復元

- RDSの復元方法には、主に次の2つがある。
  - 通常のリストア：スナップショットからデータベースインスタンスを復元
  - **ポイントインタイムリカバリ**：バックアップのデータベースとトランザクションログが残っている範囲内の特定の日時時点にデータを復元
- 自動バックアップ機能の保管期間は、最大35日である。
- **マルチAZ**にすると、コストがかかるが耐久性と可用性を向上させることができる。
- データベースに障害が発生した場合、シングルAZではバックアップを利用して復元する必要があるが、
  マルチAZでは自動でフェイルオーバーが行われる。
- シングルAZのインスタンスでスナップショットを作成すると、IOが短時間中断を受ける可能性がある。

### Amazon RDS Proxy

- **Amazon RDS Proxy**を使用すると、アプリケーションでデータベース接続をプールおよび共有して、アプリケーションのスケーリング能力を向上させることができる。

### Amazon Aurora

- **Amazon Aurora**は、PostgreSQLやMySQLと互換性のある、AWS固有のデータベースサービスである。
- Amazon Auroraは、PostgreSQLやMySQLよりも性能やスループットが優れている。
- **Protection Groups**は、データを10GBずつのグループに分けて各AZに保存する機能である。
- **バックトラック（BackTrack）**は、同じDBクラスタで、簡単にチェックポイントに状態を巻き戻す機能である。
- **Auroraマルチマスタークラスター**は、全てのデータベースインスタンスでデータの読み取り・書き込み処理を行う構成のことである。
- **Amazon Aurora Global Database**を使用すると、複数リージョンにAuroraクラスターをデプロイすることができる。
- **Aurora Serverless**は、通常はデータベースインスタンスが起動しておらず、SQLのリクエストを受け取って初めてデータベースインスタンスが起動するサービスである。
- [Amazon Aurora とは - Amazon Aurora](https://docs.aws.amazon.com/ja_jp/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
