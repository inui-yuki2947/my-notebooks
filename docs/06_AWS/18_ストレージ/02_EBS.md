# AWS/ストレージ/EBS

## 共通

### 概要

- **Amazon Elastic Block Store（Amazon EBS）**は、EC2インスタンスで使用するための、**ブロックストレージ**（データを「ブロック」と呼ばれる細かい単位で保管する方式）ボリュームを提供する。
- EBSは原則1台のEC2インスタンスで利用するが、マルチアタッチを使用することで、複数のEC2インスタンスと共有できる。
- **EBS最適化**を行うことで、EC2とEBS間の通信専用帯域を確保できる。
- [Amazon Elastic Block Store (Amazon EBS) - Amazon Elastic Compute Cloud](https://docs.aws.amazon.com/ja_jp/AWSEC2/latest/UserGuide/AmazonEBS.html)
