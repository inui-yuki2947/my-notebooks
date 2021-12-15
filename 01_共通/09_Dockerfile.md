# Dockerfile

## 基本

### 概要

- Dockerfileの各コマンドは、**毎回コンテナを起動して実行している**ので注意。
  （例：`RUN cd /tmp`などとしても、次のコマンドのカレントディレクトリは`/`である。）
- キャッシュを効かせるため、ファイルのコピーより`yarn install`などを先に書くべき。
- [Dockerfile リファレンス — Docker-docs-ja 20.10 ドキュメント](https://docs.docker.jp/engine/reference/builder.html)

### パーサ・ディレクティブ

- パーサ・ディレクティブは、オプションでシンタックス等を変更できる。

  ```dockerfile
  # ディレクティブ=値
  ```

### FROM

- `FROM`句で、ベースとなるDockerイメージを指定する。

  ```dockerfile
  FROM 元となるイメージ
  ```

### RUN

- `RUN`句で、実行するOSコマンドを指定する。

  ```dockerfile
  RUN コマンド
  ```

### COPY, ADD

- `COPY`句は、ファイルのコピーを行う。

  ```dockerfile
  COPY コピー元 Dockerイメージ内のコピー・展開先
  ```

- `ADD`句は、tarファイルの展開を行いつつ、ファイルのコピーを行う。

  ```dockerfile
  ADD コピー元 Dockerイメージ内のコピー・展開先
  ```

- `.dockerignore`ファイルには、COPY句で無視するファイル・ディレクトリを記述する。

### ENTRYPOINT, CMD

- [DockerfileのCMDとENTRYPOINTを改めて解説する - Qiita](https://qiita.com/uehaj/items/e6dd013e28593c26372d)
- `ENTRYPOINT`句は、コンテナ起動時に実行するコマンドを指定する。
- `CMD`句は、`run`コマンドに渡すコマンド・引数のデフォルト値を指定する。
- `run`コマンドでは、
  - `ENTRYPOINT`句を指定しない場合、そのプロセスで実行するコマンド・引数が渡せる。
  - `ENTERPOINT`句を指定する場合、そのプロセスに対する追加引数のみが渡せる。
- `ENTRYPOINT, CMD`句は、Dockerfile内で1度しか使えない。

### ENTRYPOINT, CMDの形式

- exec形式（推奨）

  ```dockerfile
  CMD [["コマンド"], "パラメータ1", "パラメータ2"]
  ```

- shell形式

  ```dockerfile
  CMD コマンド パラメータ1 パラメータ2
  ```

- exec形式では、シェル変数は変数展開されない。
- shell形式では、`/bin/sh -c`が勝手に付与されてしまうため、exec形式が推奨である。

### ENV

- `ENV`句は、以降に続く構築ステージ、及びイメージから実行したコンテナで使える環境変数を定義する。

  ```dockerfile
  ENV キー=値 ...
  ```

### マルチステージビルド

- `Dockerfile`に`FROM`句を2つ以上書くと、マルチステージビルドを行える。
- ステージ名は、`FROM`句で指定できる。（デフォルトでは0から始まる数字となる）

  ```dockerfile
  FROM 元となるイメージ AS ステージ名
  ```

- `COPY`句の`--from=ステージ名`オプションで、別のステージのファイルを利用できる。
- `build`コマンドの`--target ステージ名`オプションで、ビルドするステージを指定できる。

