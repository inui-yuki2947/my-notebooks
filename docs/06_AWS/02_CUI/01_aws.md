# AWS/CUI/aws

## 共通

### 概要

- AWS Command Line Interface（AWS CLI）は、コマンドラインシェルでコマンドを使用して AWSサービスとやり取りするツールである。

- [AWS Command Line Interface とはどのようなものですか。 - AWS Command Line Interface](https://docs.aws.amazon.com/ja_jp/cli/latest/userguide/cli-chap-welcome.html)

## インストール

### Mac

```bash
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /
```

## aws

### コマンド

| コマンド                             | 概要                              |
| ------------------------------------ | --------------------------------- |
| `aws コマンド サブコマンド [パラメータ]` | AWS CLIの各種コマンドを実行する。 |

### オプション

| オプション                 | 概要                                                         |
| -------------------------- | ------------------------------------------------------------ |
| `--profile プロファイル名` | プロファイルを指定する。<br />（未指定時は、`default`プロファイルが使用される。） |
| `--query クエリ`           | JMESPathクエリを指定する。                                   |

### その他

- `AWS_ACCESS_KEY_ID`等の環境変数を変更することでも、設定を変更できる。

## aws configure

### コマンド

| コマンド                          | 概要                |
|-------------------------------|-------------------|
| `aws configure`               | 全ての設定項目を対話的に変更する。 |
| `aws configure get 項目名`       | 指定した設定項目を表示する。    |
| `aws configure set 項目名 値`     | 指定した設定項目を変更する。    |
| `aws configure list`          | 全ての設定項目を表示する。     |
| `aws configure list-profiles` | 全てのプロファイル名を表示する。  |

## 設定ファイル

### ファイル

| ファイル             | 概要                                                   |
| -------------------- | ------------------------------------------------------ |
| `~/.aws/credentials` | 機密性の高い認証情報が、プロファイルごとに格納される。 |
| `~/.aws/config`      | 機密性の低い認証情報が、プロファイルごとに格納される。 |

### 書式（~/.aws/credentials）

```text
[default]
aws_access_key_id=AKIAIOSFODNN7EXAMPLE
aws_secret_access_key=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY

[user1]
aws_access_key_id=AKIAI44QH8DHBEXAMPLE
aws_secret_access_key=je7MtGbClwBF/2Zp9Utk/h3yCo8nvbEXAMPLEKEY
```

### 参考資料

- [Configuration and credential file settings - AWS Command Line Interface](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html)
