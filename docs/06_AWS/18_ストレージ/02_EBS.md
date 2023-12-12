# AWS/ストレージ/EBS

## 共通

### 概要

- **Amazon Elastic Block Store（Amazon EBS）**は、EC2インスタンスで使用するための、**ブロックストレージ**（データを「ブロック」と呼ばれる細かい単位で保管する方式）ボリュームを提供する。
- EBSは原則**1台**のEC2インスタンスで利用するが、マルチアタッチを使用することで、複数のEC2インスタンスと共有できる。
- **EBS最適化**を行うことで、EC2とEBS間の通信専用帯域を確保できる。
- EBSボリュームは作成時に暗号化する必要があり、作成後には暗号化できない。
- [Amazon Elastic Block Store (Amazon EBS) - Amazon Elastic Compute Cloud](https://docs.aws.amazon.com/ja_jp/AWSEC2/latest/UserGuide/AmazonEBS.html)

### ボリュームタイプ

| 種類                                          | HDD/SSD | 概要                                                   |
| --------------------------------------------- | ------- | ------------------------------------------------------ |
| 汎用SSD（General Purpose SSD: gp2, gp3）      | SSD     | 価格とパフォーマンスのバランスがよいボリュームタイプ。 |
| プロビジョンドIOPS SSD（PIOPS SSD: io1, io2） | SSD     | 低レイテンシーかつ高スループットなボリュームタイプ。   |
| スループット最適化HDD（st1）                  | HDD     | スループットが高く低コストなボリュームタイプ。         |
| コールドHDD（sc1）                            | HDD     | アクセス頻度が低い用途に適したボリュームタイプ。       |
| マグネティック                                | HDD     | 旧世代のボリュームタイプ。                             |
