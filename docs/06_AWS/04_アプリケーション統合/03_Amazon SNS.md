# AWS/アプリケーション統合/Amazon SNS

## 共通

### 概要

- **Amazon Simple Notification Service（Amazon SNS）**は、主に短文のメッセージ配信を提供するマネージドサービスである。
- メッセージを送信する側を**パブリッシャー**、受信する側を**サブスクライバー**と呼ぶ。
- **ファンアウト**は、1つのメッセージを複数のサブスクライバーにプッシュすること。
- **フィルターポリシー**を用いると、サブスクリプションごとにJSON形式でフィルタリングが可能である。
- [Amazon SNS とは - Amazon Simple Notification Service](https://docs.aws.amazon.com/ja_jp/sns/latest/dg/welcome.html)
