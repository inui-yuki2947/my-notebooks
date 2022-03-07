# AWS

## 共通

### 概要

- AWSは従量課金制のため、アクセス数の変動が大きい場合にメリットが大きい。
- マネージドサービスで、バックアップやアップデートが自動で行われる。

### ドキュメント

- <https://docs.aws.amazon.com/ja_jp/>

### マネジメントコンソール

- マネジメントコンソールで、AWSをブラウザ上で操作できる。
- マネジメントコンソールは、リージョンごとに別物で、使用できるサービスにも違いがある。
- [AWS Management Console](https://ap-northeast-1.console.aws.amazon.com/console/home?region=ap-northeast-1)

### リージョン

- ローカルリージョンの使用には、申込みと審査が必要。
- 各リージョンでは、複数のアベイラビリティーゾーンに、物理的に独立した設備を置いている。

### IAM

- IAM (Identity and Access Management)は、AWSにおける認証機能。
- IAMポリシーは、実行者がどのサービスにアクセスできるかを設定する機能。よく使うものは、AWS管理ポリシーに用意されている。

## AWS CLI

### ドキュメント

- [AWS Command Line Interface Documentation](https://docs.aws.amazon.com/cli/index.html)

### コマンド

| コマンド                             | 概要                              |
| ------------------------------------ | --------------------------------- |
| `aws コマンド サブコマンド [パラメータ]` | AWS CLIの各種コマンドを実行する。 |

## configure

### コマンド

|コマンド|概要|
|---|---|
|`aws configure`|AWS CLIのオプションを設定する。|
