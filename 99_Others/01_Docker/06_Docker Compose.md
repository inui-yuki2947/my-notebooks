# Others/Docker/Docker Compose

## 共通

### 概要

- Docker Composeとは、複数のコンテナを定義し実行するツール。
- Docker Composeでは、ネットワークが自動生成される。
- プロジェクト名は通常、`docker-compose.yml`ファイルが存在するディレクトリ名となる。

### インストール

- Docker DesktopにはDocker Composeが同梱されている。
- Linuxなどでは、Docker Composeのインストールは、Dockerのインストールとは別に行う必要がある。

### docker-compose.yml

- `docker-compose.yml`ファイルで、Docker Composeの設定を記述する。
- 当ファイルで、`run`コマンドの引数などをコードとして定義できる。
- `version`句で、バージョンを記述する。

  ```yaml
  version: バージョン
  ```

- `services`句で、サービス（コンテナ）一覧を記述する。

  ```yaml
  services:
    サービス1: ...
    サービス2: ...
  ```

- `volumes`句で、ボリュームを指定できる。（`run`コマンドと違い、ボリュームは自動生成されない）

  ```yaml
  volumes:
    ボリューム名:
  ```

## up

### コマンド

|コマンド|概要|
|---|---|
|`docker-compose up`|Docker Composeを起動する。|

### オプション

|オプション|概要|
|---|---|
|`-d`|バックグラウンド実行となる。|

## down

### コマンド

|コマンド|概要|
|---|---|
|`docker-compose down`|Docker Composeを終了する。|

### オプション

|オプション|概要|
|---|---|
|`--volumes`|使用したボリュームも削除できる。|

## logs

### コマンド

|コマンド|概要|
|---|---|
|`docker-compose logs`|ログを確認できる。|