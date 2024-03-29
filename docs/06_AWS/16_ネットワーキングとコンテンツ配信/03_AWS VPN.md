# AWS/ネットワーキングとコンテンツ配信/AWS VPN

## AWS Site-to-Site VPN

### 概要

- **AWS Site-to-Site VPN**は、オンプレミスネットワークとAWSネットワーク間をVPN接続するサービスである。
- **カスタマーゲートウェイ**は、オンプレミス側のゲートウェイである。
- **仮想プライベートゲートウェイ**は、VPC側のゲートウェイである。
- IPv6は仮想プライベートゲートウェイのVPN接続ではサポートされていないので、必要な場合はAWS Transit Gatewayを使用する。
- **VPN CloudHub**により、複数のオンプレミスネットワーク（カスタマーゲートウェイ）からのハブを作ることができる。
- [AWS Site-to-Site VPN の概要 - AWS Site-to-Site VPN](https://docs.aws.amazon.com/ja_jp/vpn/latest/s2svpn/VPC_VPN.html)

## AWS Client VPN

### 概要

- **AWS Client VPN**は、クライアントデバイスとAWSネットワーク間をVPN接続するサービスである。
- [AWS Client VPN とは? - AWS クライアント VPN](https://docs.aws.amazon.com/ja_jp/vpn/latest/clientvpn-admin/what-is.html)
