# Docker/Docker/Dockerfile

## 共通

### 概要

- Dockerfileの各コマンドは、**毎回コンテナを起動して実行している**ので注意。
  （例：`RUN cd /tmp`などとしても、次のコマンドのカレントディレクトリは`/`である。）
- キャッシュを効かせるため、ファイルのコピーより`yarn install`などを先に書くべき。

### 参考資料

- [Dockerfile リファレンス — Docker-docs-ja 20.10 ドキュメント](https://docs.docker.jp/engine/reference/builder.html)
- [Dockerfile のベスト・プラクティス — Docker-docs-ja 19.03 ドキュメント](https://docs.docker.jp/develop/develop-images/dockerfile_best-practices.html)

## パーサ・ディレクティブ

### 書式

| 書式                  | 概要                         |
| --------------------- | ---------------------------- |
| `# ディレクティブ=値` | シンタックス等を変更できる。 |

## 基本

### 書式

| 書式                                             | 概要                                                         |
| ------------------------------------------------ | ------------------------------------------------------------ |
| `FROM 元となるイメージ`                          | ベースとなるDockerイメージを指定する。                       |
| `WORKDIR パス`                                   | 以降の命令での作業ディレクトリを指定する。                   |
| `ENV キー=値 ...`                                | 以降の命令及びイメージから実行したコンテナで使える環境変数を定義する。 |
| `ARG 変数名[=デフォルト値]`                      | 構築時にユーザーが渡せる変数を定義する。                     |
| `COPY コピー元 Dockerイメージ内のコピー・展開先` | ファイルのコピーを行う。                                     |
| `ADD コピー元 Dockerイメージ内のコピー・展開先`  | tarファイルの展開を行いつつ、ファイルのコピーを行う。        |

### ファイル

| ファイル        | 概要                                                 |
| --------------- | ---------------------------------------------------- |
| `.dockerignore` | `COPY`句で無視するファイル・ディレクトリを記述する。 |

## RUN, ENTRYPOINT, CMD

### 書式

| 書式                  | 概要                                                         |
| --------------------- | ------------------------------------------------------------ |
| `RUN コマンド`        | イメージ構築時に実行するOSコマンドを指定する。               |
| `ENTRYPOINT コマンド` | コンテナ起動時に**実行するコマンド**を指定する。             |
| `CMD コマンド`        | コンテナ起動時の**コマンドライン引数のデフォルト値**を指定する。 |

- `ENTRYPOINT, CMD`句は、それぞれDockerfile内で1度しか使えない。

### コンテナ起動時に実行されるコマンド

| ENTRYPOINT句 | 実行されるコマンド                           |
| ------------ | -------------------------------------------- |
| なし         | コマンドライン引数またはCMD句                |
| あり         | ENTRYPOINT句 + コマンドライン引数またはCMD句 |

- [DockerfileのCMDとENTRYPOINTを改めて解説する - Qiita](https://qiita.com/uehaj/items/e6dd013e28593c26372d)

### 書式（コマンド）

| 書式                                               | 名称             | その他                                                   |
| -------------------------------------------------- | ---------------- | -------------------------------------------------------- |
| `["コマンド", "引数1", ...]`<br />`["引数1", ...]` | exec形式（推奨） | 文字列内のシェル変数は、変数展開されない。               |
| `コマンド パラメータ1 ...`                         | shell形式        | 指定したコマンドは、`/bin/sh -c`が付与されて実行される。 |

## マルチステージビルド

- `Dockerfile`に`FROM`句を2つ以上書くと、マルチステージビルドを行える。

- ステージ名は、`FROM`句で指定できる。（デフォルトでは0から始まる数字となる）

  ```dockerfile
  FROM 元となるイメージ AS ステージ名
  ```

- `COPY`句の`--from=ステージ名`オプションで、別のステージのファイルを利用できる。

- `build`コマンドの`--target ステージ名`オプションで、ビルドするステージを指定できる。

## よく使うイメージ

### mysql

- [mysql - Official Image | Docker Hub](https://hub.docker.com/_/mysql)

- コンテナが初めて起動されたとき、以下が実行される。
  - 環境変数`MYSQL_DATABASE`で指定された名前のデータベースが作成される。
  - `/docker-entrypoint-initdb.d`ディレクトリ配下に配置された、`.sh`, `.sql`, `.sql.gz`ファイルも実行される。