# AWS/ネットワーキングとコンテンツ配信/CloudFront

## 共通

### 概要

- **Amazon CloudFront**は、エッジロケーションからコンテンツを配信するCDNサービスのこと。
- 接続ポイントは、400を超える**エッジロケーション**と、13の**リージョン別エッジキャッシュ**（エッジロケーションにコンテンツがキャッシュされていない場合、オリジンサーバーの前にこのサーバーから配信される）で構成されている。
- CloudFrontへキャッシュするコンテンツの提供元を**オリジン**と呼ぶ。
- **「フィールドレベル暗号化」**は、個人情報に関わるような機密性の高いデータのセキュリティを確保するための機能である。
- **「オリジンアクセスアイデンティティ（OAI）」**を使用することで、CloudFrontのみにS3バケットへのアクセスを許可することができる。
- [Amazon CloudFront とは何ですか? - Amazon CloudFront](https://docs.aws.amazon.com/ja_jp/AmazonCloudFront/latest/DeveloperGuide/Introduction.html)
