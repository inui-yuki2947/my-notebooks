# AWS/ネットワーキングとコンテンツ配信/AWS VPN

## AWS Site-to-Site VPN

### 概要

- **AWS Site-to-Site VPN**は、オンプレミスネットワークとAWSネットワーク間をVPN接続するサービスである。
- 単一のVPCをSite-to-Site VPN経由でオンプレミス環境などVPC外の環境と接続する際
  - **カスタマーゲートウェイ**を、オンプレミス側にアタッチする。
  - **仮想プライベートゲートウェイ**を、VPC側にアタッチする。

- [AWS Site-to-Site VPN の概要 - AWS Site-to-Site VPN](https://docs.aws.amazon.com/ja_jp/vpn/latest/s2svpn/VPC_VPN.html)

## AWS Client VPN

### 概要

- **AWS Client VPN**は、クライアントデバイスとAWSネットワーク間をVPN接続するサービスである。
- [AWS Client VPN とは? - AWS クライアント VPN](https://docs.aws.amazon.com/ja_jp/vpn/latest/clientvpn-admin/what-is.html)
