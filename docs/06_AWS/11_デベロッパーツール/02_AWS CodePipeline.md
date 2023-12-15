# AWS/デベロッパーツール/AWS CodePipeline

## 共通

### 概要

- AWS CodePipelineは、ソフトウェアをリリースするために必要なステップのモデル化、視覚化、および自動化に使用できる継続的な配信サービスである。
- [AWS CodePipeline の概要 - AWS CodePipeline](https://docs.aws.amazon.com/ja_jp/codepipeline/latest/userguide/welcome.html)

## aws codepipeline

### コマンド

| コマンド                                                     | 概要                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `aws codepipeline list-pipelines`                            | コードパイプラインの一覧を表示する。                         |
| `aws codepipeline get-pipeline --name 名前`                  | 指定したコードパイプラインの情報を表示する。                 |
| `aws codepipeline get-pipeline-state --name 名前`            | 指定したコードパイプラインのステータスを表示する。           |
| `aws codepipeline update-pipeline --pipeline file://ファイル名` | 指定したコードパイプラインを、指定したJSONファイルの内容で更新する。 |
| `aws codepipeline start-pipeline-execution --name 名前`      | 指定したコードパイプラインを手動で開始する。                 |
