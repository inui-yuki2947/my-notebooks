# AWS/マネジメントとガバナンス/Amazon CloudWatch

## 共通

### 概要

- **Amazon CloudWatch**は、AWSサービスでのリソースのモニタリングと管理を行うサービスである。
- [Amazon CloudWatch とは - Amazon CloudWatch](https://docs.aws.amazon.com/ja_jp/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html)

### メトリクス

- CloudWatchで取得・監視する項目のことを**「メトリクス」**と呼ぶ。
- デフォルトでAWSから提供されているメトリクスを**「標準メトリクス」**、それ以外を**「カスタムメトリクス」**と呼ぶ。

### モニタリング

- CloudWatchでEC2を監視する場合、無料の「基本モニタリング」と、有料の「詳細モニタリング」が提供されている。

### CloudWatch Events

- CloudWatch Eventsは、AWS上のリソースの状態を監視し、あるイベントをトリガーにアクションを実行する機能である。
- 類似サービスとして、CloudWatch Eventsが機能強化されたEventBridgeというサービスがある。

## CloudWatch Logs Insights

### 例

```text
fields @timestamp, @message, @logStream, @log
| sort @timestamp desc
| limit 20
```

### 自動で生成されるフィールド

| フィールド       | 概要                                                         |
| ---------------- | ------------------------------------------------------------ |
| `@message`       | 生の未解析のログイベント。                                   |
| `@timestamp`     | ログイベントの timestamp フィールドに含まれるイベントタイムスタンプ。 |
| `@ingestionTime` | ログイベントが CloudWatch Logs によって受信された時間。      |
| `@logStream`     | ログイベントの追加先のログストリームの名前。                 |
| `@log`           | ロググループ識別子。                                         |

- [サポートされるログと検出されるフィールド - Amazon CloudWatch Logs](https://docs.aws.amazon.com/ja_jp/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData-discoverable-fields.html)

### JSONのフィールド

- JSONのフィールドは、ドット区切り（例：`フィールド1.フィールド2`）の形式で参照できる。

### クエリコマンド

| 書式                            | 概要                                                         |
| ------------------------------- | ------------------------------------------------------------ |
| `fields フィールド1, ...`       | 指定したフィールドを表示する。                               |
| `filter 条件`                   | 指定した条件に一致するログイベントを取得する。<br />`and`や`or`で条件の組み合わせが可能。 |
| `stats 集計関数`                | 集計関数を用いて計算を行う。                                 |
| `sort フィールド ascまたはdesc` | ログイベントを、指定したフィールドの昇順または降順で表示する。 |
| `limit 数`                      | クエリで返すログイベントの数を指定する。                     |

- [CloudWatch Logs Insights のクエリ構文 - Amazon CloudWatch Logs](https://docs.aws.amazon.com/ja_jp/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html)

### 参考資料

- [CloudWatch Logs Insights を使用したログデータの分析 - Amazon CloudWatch Logs](https://docs.aws.amazon.com/ja_jp/AmazonCloudWatch/latest/logs/AnalyzingLogData.html)

## フィルターとパターン

### 例

```text
{ $.eventType = "UpdateTrail" }
```

### 参考資料

- [フィルターを使用したログイベントからのメトリクスの作成 - Amazon CloudWatch Logs](https://docs.aws.amazon.com/ja_jp/AmazonCloudWatch/latest/logs/MonitoringLogData.html)
