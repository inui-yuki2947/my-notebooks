# AWS/暗号化とPKI/AWS ACM

## 共通

### 概要

- **AWS Certificate Manager（ACM）**は、SSL証明書を一括で管理できるサービスである。
- ACMは、証明書を自動的に更新するか、有効期限が近づくと電子メール通知を送信することができる。
- ACMは、**ドメイン認証**の証明書である。
  拡張認証証明書や組織認証証明書を利用するには、外部の発行機関を利用し、ACMにインポートする。
- [AWS Certificate Manager とは? - AWS Certificate Manager](https://docs.aws.amazon.com/ja_jp/acm/latest/userguide/acm-overview.html)
