# AWS/マネジメントとガバナンス/AWS Config

## 共通

### 概要

- **AWS Config**は、AWSアカウントにあるAWSリソースに関する設定の詳細ビューを提供する。
- [AWS Config とは? - AWS Config](https://docs.aws.amazon.com/ja_jp/config/latest/developerguide/WhatIsConfig.html)

### AWS Configルール

- **AWS Configルール**を使用すると、現在のリソース構成がルールに則っているかを評価することができる。
- ルールの評価方法には、Event-Based EvaluationsとPeriodic Evaluationsがある。
- Systems ManagerのAutomation機能などと連携し、非準拠のリソースの自動修復をすることができる。
