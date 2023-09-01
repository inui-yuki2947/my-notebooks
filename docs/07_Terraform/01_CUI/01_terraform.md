# Terraform/CUI/terraform

## 共通

### 概要

- Terraformとは、HashiCorp社により開発されている、オープンソースのインフラ自動構築（Infrastructure as Code）ツールである。
- [Terraform by HashiCorp](https://www.terraform.io/)

## State

### 概要

- `XXX.tfstate`ファイルは、Terraformが管理しているリソースの現在の状態を表すファイルである。
- 同ファイルは、デフォルトではローカルに配置されるが、リモートに配置することも可能である。

### 参考資料

- [State | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/language/state)

## インストール

### Mac

- コマンド

  ```bash
  brew tap hashicorp/tap
  brew install hashicorp/tap/terraform
  ```

- [Install | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/downloads)

## terraform -version

### コマンド

| コマンド             | 概要                              |
| -------------------- | --------------------------------- |
| `terraform -version` | Terraformのバージョンを表示する。 |

## terraform -help

### コマンド

| コマンド                         | 概要                                                |
| -------------------------------- | --------------------------------------------------- |
| `terraform -help [サブコマンド]` | Terraformの（指定したコマンドの）ヘルプを表示する。 |

## terraform init, get

### コマンド

| コマンド                      | 概要                                                         |
|---------------------------| ------------------------------------------------------------ |
| `terraform init [ディレクトリ]` | 指定したディレクトリ（省略時はカレントディレクトリ）で、<br />Terraformの初期化を行う。（`.terraform`ディレクトリに各種ファイルを生成する） |
| `terraform get [ディレクトリ]`  | ルートモジュールで記述されたモジュールを、`.terraform`ディレクトリにダウンロード（更新）する。<br />（※`terraform init`コマンドに包含された処理） |

### 参考資料

- [Initializing Working Directories - Terraform CLI | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/cli/init)

## terraform fmt, validate

### コマンド

| コマンド                            | 概要                                                         |
| ----------------------------------- | ------------------------------------------------------------ |
| `terraform fmt [ディレクトリ]`      | 指定したディレクトリ（省略時はカレントディレクトリ）で、<br />フォーマットを修正し、修正を行ったファイルの一覧を出力する。 |
| `terraform validate [ディレクトリ]` | 指定したディレクトリ（省略時はカレントディレクトリ）で、<br />設定ファイルの構文チェックを行い、不正な部分を出力する。 |

### オプション

| オプション   | 概要                                                         |
| ------------ | ------------------------------------------------------------ |
| `-recursive` | サブディレクトリを再帰的にチェックする。<br />（デフォルトではチェックしない） |

## terraform plan, apply

### コマンド

| コマンド                           | 概要                                                         |
| ---------------------------------- | ------------------------------------------------------------ |
| `terraform plan [ディレクトリ]`    | 指定したディレクトリ（省略時はカレントディレクトリ）で、<br />現在の設定で適用される差分を表示する。 |
| `terraform apply [プランファイル]` | 指定したプランファイル（省略時は`terraform plan`の実行結果）をもとに、<br />インフラを更新する。 |

### オプション

| コマンド           | 概要                         |
| ------------------ | ---------------------------- |
| `-target リソース` | 適用するリソースを限定する。 |

## terraform output

### コマンド

| コマンド                  | 概要                                                     |
| ------------------------- | -------------------------------------------------------- |
| `terraform output [名前]` | 指定した名前（省略時は全て）の、出力変数の値を出力する。 |

## terraform import

### コマンド

| コマンド                       | 概要                                                         |
| ------------------------------ | ------------------------------------------------------------ |
| `terraform import アドレス ID` | 指定した既存リソースをインポートし、tfstateファイルに追記する。 |

- インポートしたリソースを削除するには、`terraform state rm アドレス`を使用する。
- [Command: import | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/cli/commands/import)

## terraform workspace

### コマンド

| コマンド                                                     | 概要                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `terraform workspace list [ディレクトリ]`                    | 指定したディレクトリ（省略時はカレントディレクトリ）で、<br />ワークスペースの一覧を表示する。 |
| `terraform workspace new ワークスペース名 [ディレクトリ]`    | 指定したディレクトリ（省略時はカレントディレクトリ）で、<br />ワークスペースを作成する。 |
| `terraform workspace delete ワークスペース名 [ディレクトリ]` | 指定したディレクトリ（省略時はカレントディレクトリ）で、<br />ワークスペースを削除する。 |
| `terraform workspace show`                                   | 現在のワークスペース名を表示する。                           |
