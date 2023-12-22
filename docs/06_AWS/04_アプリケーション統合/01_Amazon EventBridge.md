# AWS/アプリケーション統合/Amazon EventBridge

## 共通

### 概要

- **Amazon EventBridge**は、イベントを使用してアプリケーションコンポーネント同士を接続するサーバーレスサービスである。
- Amazon EventBridgeは、CloudWatch Eventsの上位互換である。
- ルールのスケジュールは、一定の間隔を指定する簡単な**rate式**、あるいは特定の時間を指定する複雑な**cron式**を使用できる。
- [Amazon EventBridge とは - Amazon EventBridge](https://docs.aws.amazon.com/ja_jp/eventbridge/latest/userguide/eb-what-is.html)

### Event Bus

- **Event Bus**は、データソースからアプリケーションまでの一貫したパイプラインを構築できる。

### EventBridge Pipes

- **EventBridge Pipes**は、メッセージブローカーに対してメッセージをポーリングして受信する。
