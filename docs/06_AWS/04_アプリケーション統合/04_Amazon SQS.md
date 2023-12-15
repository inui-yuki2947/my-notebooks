# AWS/アプリケーション統合/Amazon SQS

## 共通

### 概要

- **Amazon Simple Queue Service（Amazon SQS）**は、完全マネージド型メッセージキューである。
- キューが空の場合
  - **ショートポーリング**は、Emptyメッセージが返送される。
  - **ロングポーリング**は、メッセージを取得できるまで待機するので、メッセージ取得要求数を減らせる。
- **可視性タイムアウト**は、ある受信者がメッセージを取得した場合に、ほかの受信者にはそのメッセージを一定時間見せないようにすることで、処理の重複を防止したり、リクエスト数を減らすことができる機能である。
- [Amazon Simple Queue Serviceとは? - Amazon Simple Queue Service](https://docs.aws.amazon.com/ja_jp/AWSSimpleQueueService/latest/SQSDeveloperGuide/welcome.html)
