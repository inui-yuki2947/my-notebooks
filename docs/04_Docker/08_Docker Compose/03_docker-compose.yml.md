# Docker/Docker Compose/docker-compose.yml

## 共通

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
