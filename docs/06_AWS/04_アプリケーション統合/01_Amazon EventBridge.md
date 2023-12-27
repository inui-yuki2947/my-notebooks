# AWS/アプリケーション統合/Amazon EventBridge

## 共通

### 概要

- **Amazon EventBridge**は、イベントを使用してアプリケーションコンポーネント同士を接続するサーバーレスサービスであり、
  Amazon CloudWatch Eventsの上位互換である。
- [Amazon EventBridge とは - Amazon EventBridge](https://docs.aws.amazon.com/ja_jp/eventbridge/latest/userguide/eb-what-is.html)

### 種類

| 種類               | 概要                                                         |
| ------------------ | ------------------------------------------------------------ |
| Event Bus（Rules） | データソースからアプリケーションまでの一貫したパイプラインを構築できる。Pub/Sub型。 |
| Pipes              | メッセージブローカーに対してメッセージをポーリングして受信する。Producer/Consumer型。 |
| Scheduler          | スケジュールベースのイベント実行をする。                     |

### スケジュール

- ルールのスケジュールは、一定の間隔を指定する簡単な**rate式**、あるいは特定の時間を指定する複雑な**cron式**を使用できる。
