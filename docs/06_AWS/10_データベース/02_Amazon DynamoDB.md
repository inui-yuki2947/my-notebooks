# AWS/データベース/Amazon DynamoDB

## 共通

### 概要

- Amazon DynamoDBは、キーバリューストア型のデータベース。
- Amazon DynamoDBでは、データは自動的に3箇所のAZに保存される。
- Amazon DynamoDBでは、**結果整合性モデル**を採用しており、処理は高速だが最新の結果が反映されていないことがある。
- **「強力な整合性」**を備えた読み込みを行うと、書き込みが反映された最新データを確実に読み取ることができる。
- [Amazon DynamoDB とは - Amazon DynamoDB](https://docs.aws.amazon.com/ja_jp/amazondynamodb/latest/developerguide/Introduction.html)

### DynamoDBの操作

- **グローバルテーブル**を使用すると、複数リージョンに同一テーブルを作成することができる。

### DAXとインメモリアクセラレーション

- **DynamoDB Accelerator（DAX）**は、DynamoDB用のインメモリキャッシュである。
