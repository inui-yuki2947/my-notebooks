# AWS/管理とガバナンス/CloudWatch

## 共通

### 概要

- CloudWatchは、AWSサービスでのリソースのモニタリングと管理を行うサービス。

### CloudWatch Logs Insights

- 例

  ```text
  fields @timestamp, @message, @logStream, @log
  | sort @timestamp desc
  | limit 20
  ```

- [CloudWatch Logs Insights を使用したログデータの分析 - Amazon CloudWatch Logs](https://docs.aws.amazon.com/ja_jp/AmazonCloudWatch/latest/logs/AnalyzingLogData.html)

### フィルターとパターン

- 例

  ```text
  { $.eventType = "UpdateTrail" }
  ```

- [フィルターを使用したログイベントからのメトリクスの作成 - Amazon CloudWatch Logs](https://docs.aws.amazon.com/ja_jp/AmazonCloudWatch/latest/logs/MonitoringLogData.html)
