# AWS/マネジメントとガバナンス/AWS Systems Manager

## 共通

### 概要

- **AWS Systems Manager（SSM）**は、AWSアプリケーションおよびリソースのオペレーションハブである。
- [AWS Systems Manager とは? - AWS Systems Manager](https://docs.aws.amazon.com/ja_jp/systems-manager/latest/userguide/what-is-systems-manager.html)

### サービス

| 種類                | 概要                                                         |
| ------------------- | ------------------------------------------------------------ |
| Fleet Manager       | AWSまたはオンプレミスで実行されているノードをリモートで管理するのに役立つ。 |
| Session Manager     | 秘密鍵の管理をせずにEC2インスタンスにログインできる。        |
| Run Command         | マネージドノードの設定を安全にリモートで管理することができる。 |
| State Manager       | EC2インスタンスやオンプレミスサーバーなどを事前定義された状態に保つためのプロセスを自動化する。 |
| Patch Manager       | マネージドノードにパッチを適用するプロセスを自動化する。     |
| Quick Setup         | よく使うAWSリソースに対し、ベストプラクティスに基づいて推奨設定事項を提供する。 |
| Maintenance Windows | メンテナンス時間帯をcron形式で設定できる。                   |
| Automation          | Automation Document（JSON, YAML）で処理を記述し、自動実行する。 |
| Inventory           | サーバー上で稼働するソフトウェアの一覧を表示する。           |
| Parameter Store     | パスワードなどの文字列情報を保存する。                       |
| Document            | Run CommandやState Managerで実行する内容を保存する。         |
| OpsCenter           | AWSで運用中に発生したイベントを管理する。                    |
| Explorer            | OpsCenterのイベント状況をダッシュボード形式で表示する。      |
| Change Calender     | 特定の日時を指定し、定期処理を実行する。                     |
| App Copnfig         | アプリケーションの設定情報やデプロイを管理する。             |

## aws ssm

### コマンド

| コマンド                                       | 概要                                                 |
| ---------------------------------------------- | ---------------------------------------------------- |
| `aws ssm get-parameter --name 名前`            | 指定した名前のパラメータの情報を取得する。           |
| `aws ssm put-parameter --name 名前 --value 値` | 指定した名前のパラメータに、指定した値をセットする。 |

### オプション

| コマンド        | オプション          | 概要                                                         |
| --------------- | ------------------- | ------------------------------------------------------------ |
| `get-parameter` | `--with-decryption` | パラメータがシークレット値である場合に、値を復号して返却する。<br />（デフォルトでは暗号化された値が返却される） |
| `get-parameter` | `--query 表現`      | 結果をJMESPathで加工する。                                   |
| `put-parameter` | `--type タイプ`     | タイプを指定する。<br />`String`, `StringList`, `SecureString`が指定可能。 |
| `put-parameter` | `--overwrite`       | 指定したパラメータが存在する場合に、上書きする。<br />（デフォルトではエラーになる） |

### 参考資料

- [Parameter Storeの使用 - AWS Systems Manager](https://docs.aws.amazon.com/ja_jp/systems-manager/latest/userguide/parameter-store-working-with.html)
