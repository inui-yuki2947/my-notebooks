# AWS/コンテナ/Amazon ECS

## 共通

### 概要

- **Amazon Elastic Container Service（Amazon ECS）**は、AWSのフルマネージドコンテナオーケストレーションサービスである。
- [Amazon Elastic Container Service とは - Amazon Elastic Container Service](https://docs.aws.amazon.com/ja_jp/AmazonECS/latest/developerguide/Welcome.html)

### AWS Fargate

- **AWS Fargate**は、必要に応じてEC2インスタンスを起動し、その中にコンテナを割り当てて実行するしくみである。
- [AWS Fargateとは? - Amazon ECS](https://docs.aws.amazon.com/ja_jp/AmazonECS/latest/userguide/what-is-fargate.html)

### Amazon ECS Anywhere

- **Amazon ECS Anywhere**を用いると、ECSをユーザーが所有するインフラストラクチャ上で実行できる。

## aws ecs

### コマンド

| コマンド                                        | 概要                                                 |
| ----------------------------------------------- | ---------------------------------------------------- |
| `aws ecs run-task --task-definition タスク定義` | 指定したタスク定義を用いて、新しいタスクを開始する。 |
| `aws ecs describe-tasks --tasks タスク`         | 指定したタスクの詳細を表示する。                     |
