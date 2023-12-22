# AWS/データベース/Amazon ElasticCache

## 共通

### 概要

- **Amazon ElasticCache**は、キーバリュー型・インメモリ型のデータベースである。
- Amazon ElastiCacheは、一般的にRDBのパフォーマンス向上のために利用される。
- [Amazon ElastiCache for Redis とは - Amazon ElastiCache for Redis](https://docs.aws.amazon.com/ja_jp/AmazonElastiCache/latest/red-ug/WhatIs.html)
- [Amazon ElastiCache for Memcached とは - Amazon ElastiCache](https://docs.aws.amazon.com/ja_jp/AmazonElastiCache/latest/mem-ug/WhatIs.html)

### 種類

- Amazon ElastiCacheは、**Memcached**と**Redis**エンジンのどちらでも使用できる。

| 種類      | 概要                                                         |
| --------- | ------------------------------------------------------------ |
| Memcached | 一般的なデータのキャッシュ用として使用。<br />ノード間の複製は行われないが、マルチスレッドで処理効率が高い。 |
| Redis     | プライマリ・レプリカ型の構成で、可用性が高い。<br />データの永続性を持つ。 |
