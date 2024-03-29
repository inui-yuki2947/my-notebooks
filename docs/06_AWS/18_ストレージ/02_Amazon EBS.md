# AWS/ストレージ/Amazon EBS

## 共通

### 概要

- **Amazon Elastic Block Store（Amazon EBS）**は、EC2インスタンスで使用するための、**ブロックストレージ**サービスである。
- EBSは原則**1台**のEC2インスタンスで利用するが、マルチアタッチを使用することで、複数のEC2インスタンスと共有できる。
- **EBS最適化**を行うことで、EC2とEBS間の通信専用帯域を確保できる。
- EBSボリュームは作成時に暗号化する必要があり、作成後には暗号化できない。
- [Amazon Elastic Block Store (Amazon EBS) - Amazon Elastic Compute Cloud](https://docs.aws.amazon.com/ja_jp/AWSEC2/latest/UserGuide/AmazonEBS.html)

### ストレージの種類

| 種類                   | サービス例 | 概要                                                   |
| ---------------------- | ---------- | ------------------------------------------------------ |
| オブジェクトストレージ | Amazon S3  | 階層構造を持たず、メタデータとともにデータを保存する。 |
| ブロックストレージ     | Amazon EBS | データを「ブロック」と呼ばれる細かい単位で保存する。   |
| ファイルストレージ     | Amazon EFS | データを階層的に保存する。                             |

### スナップショット

- EBSでは、スナップショットを用いてバックアップを取得することができる。

### Amazon Data Lifecycle Manager（Amazon DLM）

- **Amazon Data Lifecycle Manager（Amazon DLM）**を使用して、EBS スナップショットとEBS-backed AMIの作成、保持、削除を自動化できる。

### ボリュームタイプ

| 種類                                          | HDD/SSD | 概要                                                   |
| --------------------------------------------- | ------- | ------------------------------------------------------ |
| 汎用SSD（General Purpose SSD: gp2, gp3）      | SSD     | 価格とパフォーマンスのバランスがよいボリュームタイプ。 |
| プロビジョンドIOPS SSD（PIOPS SSD: io1, io2） | SSD     | ランダムアクセスに適した、低レイテンシーかつ高スループットなボリュームタイプ。   |
| スループット最適化HDD（st1）                  | HDD     | スループットが高く低コストなボリュームタイプ。         |
| コールドHDD（sc1）                            | HDD     | アクセス頻度が低い用途に適したボリュームタイプ。       |
| マグネティック                                | HDD     | 旧世代のボリュームタイプ。                             |
