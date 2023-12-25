# AWS/暗号化とPKI/AWS KMS

## 共通

### 概要

- **AWS Key Management Service（AWS KMS）**は、AWS上で鍵管理を提供するマネージドサービスである。
- BYOK（Bring Your Own Key）を使用すると、キーの自動ローテーションは使用できない。
- **エンベロープ暗号化**は、データキーでプレーンテキストデータを暗号化してから、そのデータキーを別のキーで暗号化する手法である。
- [AWS KMS の概念 - AWS Key Management Service](https://docs.aws.amazon.com/ja_jp/kms/latest/developerguide/concepts.html)

### CDK・CMK

- データを暗号化するためのキーを、**カスタマーデータキー（CDK）**と呼ぶ。
- CDKを暗号化するためのキーを、**カスタマーマスターキー（CMK）**と呼ぶ。
- CMKは、有効化・**無効化**・削除が可能である。
- **キーポリシー**を設定することで、CMKに対するアクセス制御が可能である。
