# AWS

## 共通

### 概要

- AWSは従量課金制のため、アクセス数の変動が大きい場合にメリットが大きい。
- マネージドサービスで、バックアップやアップデートが自動で行われる。

### ドキュメント

- <https://docs.aws.amazon.com/ja_jp/>

### マネジメントコンソール

- マネジメントコンソールで、AWSをブラウザ上で操作できる。
- マネジメントコンソールは、リージョンごとに別物で、使用できるサービスにも違いがある。
- [AWS Management Console](https://ap-northeast-1.console.aws.amazon.com/console/home?region=ap-northeast-1)

### リージョン

- ローカルリージョンの使用には、申込みと審査が必要。
- 各リージョンでは、複数のアベイラビリティーゾーンに、物理的に独立した設備を置いている。

### IAM

- IAM (Identity and Access Management)は、AWSにおける認証機能。
- IAMポリシーは、実行者がどのサービスにアクセスできるかを設定する機能。よく使うものは、AWS管理ポリシーに用意されている。

## コンピューティング

### EC2

- EC2 (Elastic Compute Cloud)は、サーバー・OS・ソフトウェアなどを一式レンタルできるサービス。
- AMI (Amazon Machine Image)は、ソフトウェア構成を記録したテンプレート。
- EBS (Elastic Block Store)は、EC2向けに設計されたストレージサービス。
- インスタンスには、タイプとサイズがあり、「タイプ.サイズ」のように表す。

### Lambda

- Lambdaは、データやリクエストのリアルタイム処理やバックエンドの処理を、自動実行するしくみ。

## コンテナ

### ECS

- ECS (Elastic Container Service)は、AWSのフルマネージドコンテナオーケストレーションサービス。

### Fargate

- Fargateは、必要に応じてEC2インスタンスを起動し、その中にコンテナを割り当てて実行するしくみ。

## データベース

### RDS

- RDS (Relational Database Service)は、主要なRDB製品を利用できるサービス。

### DynamoDB

- DynamoDBは、キーバリューストア型のデータベース。

### ElasticCache

- ElasticCacheは、インメモリ型のデータベース。

## マネジメントとガバナンス

### CloudWatch

- CloudWatchは、AWSサービスでのリソースのモニタリングと管理を行うサービス。

## ネットワーキングとコンテンツ配信

### CloudFront

- CloudFrontは、CDNのこと。

### ELB

- ELB (Elastic Load Balancing)は、AWSのロードバランサー。

### Route 53

- Route 53は、DNSのこと。

### VPC

- VPCは、AWSの仮想ネットワークで、EC2やRDS作成時にはVPCを選択する必要がある。
- VPCには物理的なルーターがなく、ソフトウェアがルーティングを行う。
- デフォルトVPCは「/16」、デフォルトのサブネットは「/20」である。
- VPCエンドポイントは、インターネットゲートウェイを通らず、S3などの非VPCサービスとVPCを接続する。

## AWS CLI

### 概要

- [AWS Command Line Interface Documentation](https://docs.aws.amazon.com/cli/index.html)

- 書式

  ```bash
  aws コマンド サブコマンド [パラメータ]
  ```

### configure

- コマンド

|コマンド|概要|
|---|---|
|`aws configure`|AWS CLIのオプションを設定する。|
