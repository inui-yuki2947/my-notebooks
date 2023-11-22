# Terraform/CUI/tfenv

## 共通

### 概要

- tfenvとは、Terraformのバージョン管理ツールである。（rbenvのようなもの）
- [tfutils/tfenv: Terraform version manager](https://github.com/tfutils/tfenv)

## インストール

### Mac

- コマンド

  ```bash
  brew install tfenv
  ```

## tfenv

### コマンド

| コマンド                     | 概要                                                      |
| ---------------------------- | --------------------------------------------------------- |
| `tfenv install [バージョン]` | 指定したバージョンのTerraformをインストールする。         |
| `tfenv uninstall バージョン` | 指定したバージョンのTerraformをアンインストールする。     |
| `tfenv list`                 | インストールされたTerraformのバージョンの一覧を表示する。 |
| `tfenv list-remote`          | インストール可能なTerraformのバージョンの一覧を表示する。 |
| `tfenv use [バージョン]`     | 指定したバージョンのTerraformを使用する。                 |
