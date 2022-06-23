# AWS/開発者用ツール/CodePipeline

## aws codepipeline list-pipelines

### コマンド

| コマンド                          | 概要                                 |
| --------------------------------- | ------------------------------------ |
| `aws codepipeline list-pipelines` | コードパイプラインの一覧を表示する。 |

## aws codepipeline get-pipeline, get-pipeline-state

### コマンド

| コマンド                                          | 概要                                               |
| ------------------------------------------------- | -------------------------------------------------- |
| `aws codepipeline get-pipeline --name 名前`       | 指定したコードパイプラインの情報を表示する。       |
| `aws codepipeline get-pipeline-state --name 名前` | 指定したコードパイプラインのステータスを表示する。 |

## aws codepipeline update-pipeline

### コマンド

| コマンド                                                     | 概要                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `aws codepipeline update-pipeline --pipeline file://ファイル名` | 指定したコードパイプラインを、指定したJSONファイルの内容で更新する。 |

## aws codepipeline start-pipeline-execution

### コマンド

| コマンド                                                | 概要                                         |
| ------------------------------------------------------- | -------------------------------------------- |
| `aws codepipeline start-pipeline-execution --name 名前` | 指定したコードパイプラインを手動で開始する。 |
