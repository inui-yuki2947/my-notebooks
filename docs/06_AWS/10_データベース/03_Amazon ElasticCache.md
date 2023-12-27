# AWS/データベース/Amazon ElasticCache

## 共通

### 概要

- **Amazon ElastiCache**は、キーバリュー型・インメモリ型のデータベースである。
- Amazon ElastiCacheのユースケースには下記がある。
  - RDBのパフォーマンス向上
  - Webアプリの接続情報など、一時データの格納

### 種類

- Amazon ElastiCacheは、**Memcached**と**Redis**エンジンのどちらでも使用できる。

| 種類      | 概要                                                         |
| --------- | ------------------------------------------------------------ |
| Memcached | 一般的なデータのキャッシュ用として使用。<br />ノード間の複製は行われないが、マルチスレッドで**処理効率が高い**。<br />[Amazon ElastiCache for Memcached とは - Amazon ElastiCache](https://docs.aws.amazon.com/ja_jp/AmazonElastiCache/latest/mem-ug/WhatIs.html) |
| Redis     | プライマリ・レプリカ型の構成で、**可用性が高い**。<br />データの永続性を持つ。<br />[Amazon ElastiCache for Redis とは - Amazon ElastiCache for Redis](https://docs.aws.amazon.com/ja_jp/AmazonElastiCache/latest/red-ug/WhatIs.html) |

### クラスタモード

- クラスタモードが無効の場合、キャッシュデータをElastiCacheインスタンスに保存する。
- クラスタモードが有効の場合、最大500個のシャードにデータを分割保存する。
