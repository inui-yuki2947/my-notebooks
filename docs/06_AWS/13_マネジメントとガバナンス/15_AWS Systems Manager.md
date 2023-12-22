# AWS/マネジメントとガバナンス/AWS Systems Manager

## 共通

### 概要

- **AWS Systems Manager（SSM）**は、AWSアプリケーションおよびリソースのオペレーションハブである。
- [AWS Systems Manager とは? - AWS Systems Manager](https://docs.aws.amazon.com/ja_jp/systems-manager/latest/userguide/what-is-systems-manager.html)

### Fleet Manager

- **Fleet Manager**は、AWSまたはオンプレミスで実行されているノードをリモートで管理するのに役立つ。

### Session Manager

- **Session Manager**は、秘密鍵の管理をせずにEC2インスタンスにログインできる仕組みである。

### Run Command

- **Run Command**では、マネージドノードの設定を安全にリモートで管理することができる。

### State Manager

- **State Manager**は、EC2インスタンスやオンプレミスサーバーなどを事前定義された状態に保つためのプロセスを自動化する。

### Patch Manager

- **Patch Manager**は、マネージドノードにパッチを適用するプロセスを自動化する。

### Automation

- **Automation**は、Automation Document（JSON, YAML）で処理を記述し、自動実行する。

### Parameter Store

- **Parameter Store**は、パスワードなどの文字列情報を保存する。

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
