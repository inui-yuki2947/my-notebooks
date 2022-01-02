# Docker

## 共通

### Dockerを使うメリット

- 誰でも簡単に同じ環境を構築できる。
- 一つの物理サーバーで、セキュアでリソースの分離された、複数アプリケーション運用をすることができる。 [Kubernetesとは何か？ | Kubernetes](https://kubernetes.io/ja/docs/concepts/overview/what-is-kubernetes/)

### インストール

- [Get Docker | Docker Documentation](https://docs.docker.com/get-docker/)

### ドキュメント

- [Orientation and setup | Docker Documentation](https://docs.docker.com/get-started/)
- [Docker 概要 — Docker-docs-ja 19.03 ドキュメント](https://docs.docker.jp/get-started/overview.html)
- [Docker入門（第一回）～Dockerとは何か、何が良いのか～ | さくらのナレッジ](https://knowledge.sakura.ad.jp/13265/)

### その他

- 2017年1月18日にリリースされたDocker v1.13以降、コマンドが再編成されている。
  [docker container / image コマンド新旧比較 - Qiita](https://qiita.com/zembutsu/items/6e1ad18f0d548ce6c266)

## サブコマンド共通

### ls

- `ls`コマンドは、当該データを一覧表示する。

  ```bash
  docker リソース ls
  ```

### inspect

- `inspect`コマンドは、当該データの詳細を表示する。

  ```bash
  docker リソース inspect 識別子...
  ```

### rm

- `rm`コマンドは、当該データを削除する。

  ```bash
  docker リソース rm 識別子...
  ```

## container

### 概要

- コンテナには、IDと名前（それぞれ一意）がある。
- コンテナのステータスには、以下の７種類がある。
  [[Docker入門] Dockerコンテナのステータスを調べてみよう | Skyarch Broadcasting](https://www.skyarch.net/blog/?p=16702)
  - created
  - restarting
  - running
  - removing
  - paused
  - exited
  - dead
- コンテナ内のファイルは、コンテナが破棄されるときに破棄される。

### ls

- `-a, --all`オプションで、実行中以外のコンテナも表示する。

### inspect

- `inspect`コマンドは、コンテナの詳細を表示する。

  ```bash
  docker container inspect コンテナ...
  ```

### run, create

- `run`コマンドは、コンテナを**起動状態**で作成し、標準出力に繋ぐ。（`create`と`start`の組み合わせ）

  ```bash
  docker container run イメージ [コマンド] [引数]
  ```

- `create`コマンドは、コンテナを**停止状態**で作成し、作成したコンテナIDを標準出力に出力する。

  ```bash
  docker container create イメージ [コマンド] [引数]
  ```

- 起動方法に関するオプション
  - `-d, --detach`オプションで、コンテナを**デタッチド・モード**で起動する。（現在のターミナルを占有しないようにする）
  - `-i, --interactive`オプションで、ホストの標準入力を、コンテナの標準入力につなげる。
  - `-t, --tty`オプションで、コンテナの標準出力を、ホストの標準出力につなげる。
- その他のオプション
  - `-p, --publish ホストのポート:コンテナのポート`オプションで、**ポートフォワーディング**を行う。
  - `-v, --volume [ボリュームまたはホスト側パス（省略時は匿名ボリューム）:]コンテナ側送信先`オプションで、ホスト側とコンテナの**ディレクトリを共有**させることができる。
  - `-w, --workdir ディレクトリ`オプションで、コンテナ内での作業ディレクトリを指定できる。
  - `--network ネットワーク名`オプションで、コンテナをネットワークに接続する。
  - `--name コンテナ名`オプションで、コンテナ名を指定できる。（指定しない場合は、適当な名前が与えられる）
  - `--rm`オプションで、終了時にコンテナを破棄する。

### commit

- 当コマンドは、コンテナのファイル変更や設定をもとに、新しいイメージを作成する。

  ```bash
  docker container commit コンテナ [リポジトリ[:タグ]]
  ```

- これでイメージを作成すると、何の操作をしてできたものなのかが分かりにくいため、**暫定的に**Dockerイメージにしておきたい場合などのみ使うべき。（Dockerfileをできるだけ使うべき）

### attach

- 当コマンドは、実行中のコンテナで起動している**PID=1**のプロセスの標準入出力に接続する。（exitするとコンテナが停止する）

  ```bash
  docker container attach コンテナ
  ```

### exec

- 当コマンドは、実行中のコンテナ内で新しいコマンドを実行する。
  [Dockerコンテナ内で操作 attachとexecの違い - Qiita](https://qiita.com/RyoMa_0923/items/9b5d2c4a97205692a560)

  ```bash
  docker container exec コンテナ コマンド
  ```

### cp

- 当コマンドは、ファイルを移動する。

  ```bash
  docker container cp 移動元 移動先
  ```

- `コンテナ名:ファイル名`でコンテナを指定できる。

## image

### 概要

- イメージには、ID・リポジトリ名・タグがある。
- イメージは、`DockerHubのアカウント名/イメージ名[:タグ]`の形式で表す。
- タグ省略時は`latest`となる。

### build

- 当コマンドは、**Dockerfile**などをもとにイメージを作成する。

  ```bash
  docker image build Dockerfileのあるディレクトリ
  ```

- `-t イメージ`オプションで、イメージ名とタグ名を指定できる。

- `--progress=plain`オプションで、ログを出力する。

### tag

- `tag`コマンドは、イメージにタグを付与する。

  ```bash
  docker image tag イメージ 新しいイメージ
  ```

### pull

- 当コマンドは、レジストリからイメージを取得する。

  ```bash
  docker image pull イメージ
  ```

### push

- `push`コマンドは、レジストリにイメージをプッシュする。

  ```bash
  docker image push イメージ
  ```

### history

- `history`コマンドは、イメージがどう構築されたかを表示する。

  ```bash
  docker image history イメージ
  ```

## volume

### 概要

- ボリュームは、ホストのファイルシステムの一部としてデータが保存される。
- 保存先は`/var/lib/docker/volumes/`であるが、そのパスでなく任意に付けた名前を使用する。

### create

- `create`コマンドは、ボリュームを作成する。

  ```bash
  docker volume create ボリューム名
  ```

## network

### 概要

- 複数のコンテナを一つのネットワークに繋げると、それらは通信できるようになる。
- Dockerインストール時に、自動的に3つのネットワークが作成されている。

### create

- `create`コマンドは、新しいネットワークを作成する。

  ```bash
  docker network create ネットワーク名
  ```

## Docker Compose

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

### up

- `up`コマンドで、Docker Composeを起動する。

  ```bash
  docker-compose up
  ```

- `-d`オプションで、バックグラウンド実行となる。

### down

- `down`コマンドで、Docker Composeを終了する。

  ```bash
  docker-compose down
  ```

- `--volumes`オプションで、使用したボリュームも削除できる。

### logs

- `logs`コマンドで、ログを確認できる。

  ```bash
  docker-compose logs
  ```

## Kubernetes

### 概要

- Kubernetesは、コンテナ操作の自動化（コンテナオーケストレーション）を提供する。