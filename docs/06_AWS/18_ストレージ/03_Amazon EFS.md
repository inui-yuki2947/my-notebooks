# AWS/ストレージ/Amazon EFS

## 共通

### 概要

- **Amazon Elastic File System（Amazon EFS）**は、Amazon EC2インスタンス向けの、**ファイルストレージ**サービスである。
- EFSは、UNIX系のOSで利用される**NFS（Network File System）**プロトコルで接続する。
- EFSは、**複数**のEC2インスタンスと接続して利用できる。
- EFSは、自動でストレージ容量をプロビジョニングする機能を持つ。
- EFSファイルシステムは作成時に暗号化する必要があり、作成後には暗号化できない。
- [Amazon Elastic File System ドキュメント](https://docs.aws.amazon.com/ja_jp/efs/?icmpid=docs_homepage_storage)

### モード

- Amazon EFSでは、下記の2つのモードを選択できる。
  - 汎用パフォーマンスモード（デフォルト）
  - 最大I/Oパフォーマンスモード
