# Docker/Docker Compose/docker-compose.yml

## 共通

### 概要

- Docker Composeを使うことで、`docker container run`コマンドの引数などをコードとして定義できる。

### ファイル

| ファイル             | 概要                                     |
| -------------------- | ---------------------------------------- |
| `docker-compose.yml` | Docker Composeの設定を記述するファイル。 |

### 例

```yml
version: "3.9"
services:
  frontend:
    image: awesome/webapp
    build: ./webapp
  backend:
    image: awesome/database
    build:
      context: backend
      dockerfile: ../backend.Dockerfile
  custom:
    build: ~/custom
volumes:
  logvolume01: {}
```

### プロパティ

| 書式                  | 型             | 概要                         |
| --------------------- | -------------- | ---------------------------- |
| `version`             |                | バージョン。                 |
| `services`            | オブジェクト型 | サービス（コンテナ）の一覧。 |
| `services.サービス名` | オブジェクト型 | サービス（コンテナ）。       |

### プロパティ（services.サービス名）

| 書式                                  | 型                                 | 概要                                                         |
| ------------------------------------- | ---------------------------------- | ------------------------------------------------------------ |
| `build`           | 文字列型<br />オブジェクト型       | イメージの構築情報。<br />構築コンテクストへのパスを文字列で指定するか、<br />詳細な情報をオブジェクトで指定する。 |
| `image`           | 文字列型                           | コンテナの元となるイメージの情報。                           |
| `depends_on`      | 文字列の配列型                     | 依存関係があるサービスの一覧。                               |
| `ports`           | 文字列の配列型<br />オブジェクト型 | 公開するポートの一覧。（短い書式）<br />文字列型の場合は、`[[IP:]ホストのポート:]コンテナのポート[/プロトコル]`の形式で指定する。（例：`6060:6060/udp`）<br />ポートは、`3000-3005`の形式で範囲指定も可能。 |
| `ports.target`    | 文字列型                           | コンテナ側ポート。                                           |
| `ports.published` | 文字列型                           | パブリックに公開されるポート。                               |
| `ports.protocol`  | 文字列型                           | プロトコル。                                                 |
| `volumes`         | 文字列の配列型<br />オブジェクト型 | 使用するボリュームの一覧。<br />文字列型の場合は、`ホスト側の相対パス:コンテナの絶対パス:アクセスモード`の形式で指定する。<br />`run`コマンドと違い、ボリュームは自動生成されない。 |
| `command`         | 文字列型<br />文字列の配列型       | イメージによって宣言済みのデフォルトコマンドを上書きするコマンド。 |

### 参考資料

- [Compose Specification（仕様） — Docker-docs-ja 20.10 ドキュメント](https://docs.docker.jp/compose/compose-file/index.html)
