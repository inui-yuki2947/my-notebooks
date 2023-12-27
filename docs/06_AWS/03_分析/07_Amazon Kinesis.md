# AWS/分析/Amazon Kinesis

## 共通

### 概要

- **Amazon Kinesis**は、ストリーミングデータを扱うサービスである。

### 種類

| 種類                          | 概要                                                         |
| ----------------------------- | ------------------------------------------------------------ |
| Amazon Kinesis Data Streams   | データレコードの大量のストリームをリアルタイムで収集し処理するサービス。<br/>**パーティション（シャード）**と呼ばれる単位でデータを分割して並列処理できる。<br />[Amazon Kinesis Data Streams とは - Amazon Kinesis Data Streams](https://docs.aws.amazon.com/ja_jp/streams/latest/dev/introduction.html) |
| Amazon Kinesis Data Firehose  | ストリーミングデータをAWSの各サービス（S3など）に簡単に配信・保存できるサービス。<br />[Amazon Kinesis Data Firehose とは何ですか? - Amazon Kinesis Data Firehose](https://docs.aws.amazon.com/ja_jp/firehose/latest/dev/what-is-this-service.html) |
| Amazon Kinesis Data Analytics | ストリーミングデータに対してSQLクエリを実行し、リアルタイム分析を行うサービス。<br />[Amazon Kinesis Data Analytics for SQL Applications とは - Amazon Kinesis Data Analytics for SQL Applications 開発者ガイド](https://docs.aws.amazon.com/ja_jp/kinesisanalytics/latest/dev/what-is.html) |
| Amazon Kinesis Video Stream   | ストリーミング動画のキャプチャ、処理、保存を行うサービス。<br />[Kinesis Video Streams とは - Amazon Kinesis Video Streams](https://docs.aws.amazon.com/ja_jp/kinesisvideostreams/latest/dg/what-is-kinesis-video.html) |
