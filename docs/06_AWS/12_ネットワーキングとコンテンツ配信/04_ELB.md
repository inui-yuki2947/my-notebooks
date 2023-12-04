# AWS/ネットワーキングとコンテンツ配信/ELB

## 共通

### 概要

- ELB (Elastic Load Balancing)は、AWSのロードバランサー。
- [Elastic Load Balancing とは? - Elastic Load Balancing](https://docs.aws.amazon.com/ja_jp/elasticloadbalancing/latest/userguide/what-is-load-balancing.html)

### 種類

| 種類                            | 概要                                      |
| ------------------------------- | ----------------------------------------- |
| Classic Load Balancer (CLB)     | 標準的なロードバランシングを提供する。    |
| Application Load Balancer (ALB) | レイヤー7（リクエストレベル）で動作する。 |
| Network Load Balancer (NLB)     | レイヤー4で動作する。                     |
| Gateway Load Balancer (GLB)     | レイヤー3で動作する。                     |
