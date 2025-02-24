# GoogleApps/CUI/gcloud

## インストール

### インストーラーの場合

- [gcloud CLI をインストールする  |  Google Cloud CLI Documentation](https://cloud.google.com/sdk/docs/install?hl=ja)

### Homebrewの場合

```bash
brew install --cask google-cloud-sdk
```

## gcloud

### コマンド

| コマンド                                     | 概要                                                         |
| -------------------------------------------- | ------------------------------------------------------------ |
| `gcloud init`                                | 対話的に初期化を行う。<br />（`gcloud auth login`や`gcloud config`等の処理が包含されている） |
| `gcloud auth login`                          | 認証を行う。                                                 |
| `gcloud auth application-default login`      | **アプリケーション用の**認証を行う。                         |
| `gcloud projects list`                       | プロジェクトの一覧を表示する。                               |
| `gcloud services list`                       | 使用可能なサービスの一覧を表示する。                         |
| `gcloud config list`                         | Google Cloud CLIの設定の一覧を表示する。                     |
| `gcloud config set キー バリュー`            | Google Cloud CLIの設定の値をセットする。                     |
| `gcloud config configurations list`          | 名前付き設定の一覧を表示する。                               |
| `gcloud config configurations create 名前`   | 名前付き設定を作成する。                                     |
| `gcloud config configurations activate 名前` | 指定した名前付き設定を有効にする。                           |

### オプション

| オプション                 | 概要                       |
| -------------------------- | -------------------------- |
| `--help`                   | ヘルプを表示する。         |
| `--project プロジェクトID` | プロジェクトIDを指定する。 |
