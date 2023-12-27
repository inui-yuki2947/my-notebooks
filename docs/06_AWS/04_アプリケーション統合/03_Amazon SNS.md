# AWS/アプリケーション統合/Amazon SNS

## 共通

### 概要

- **Amazon Simple Notification Service（Amazon SNS）**は、主に短文のメッセージ配信を提供するマネージドサービスである。
- メッセージを送信する側を**パブリッシャー**、受信する側を**サブスクライバー**と呼び、**一対多**の関係である。（cf. Amazon SQS）
- [Amazon SNS とは - Amazon Simple Notification Service](https://docs.aws.amazon.com/ja_jp/sns/latest/dg/welcome.html)

### ファンアウト

- **ファンアウト**は、1つのメッセージを複数のサブスクライバーにプッシュし、並列処理を行うことである。

### フィルターポリシー

- **フィルターポリシー**を用いると、サブスクリプションごとにJSON形式でフィルタリングが可能である。
