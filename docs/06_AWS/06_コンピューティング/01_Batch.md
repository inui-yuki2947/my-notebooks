# AWS/コンピューティング/Batch

## 共通

### 概要

- AWS Batchを使用すると、AWS クラウドでバッチコンピューティングワークロードを実行できる。
- [AWS Batch とは? - AWS Batch](https://docs.aws.amazon.com/ja_jp/batch/latest/userguide/what-is-batch.html)

## aws batch

### コマンド

| コマンド                                                     | 概要                                         |
| ------------------------------------------------------------ | -------------------------------------------- |
| `aws batch list-jobs`                                        | バッチジョブの一覧を表示する。               |
| `aws batch submit-job --job-name ジョブ名 --job-queue ジョブキュー --job-definition ジョブ定義` | ジョブ定義をもとに、バッチジョブを送信する。 |
