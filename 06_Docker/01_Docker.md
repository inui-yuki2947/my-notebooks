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

- コマンド

  |コマンド|概要|
  |---|---|
  |`docker リソース ls`|当該データを一覧表示する。|

### inspect

- コマンド

  |コマンド|概要|
  |---|---|
  |`docker リソース inspect 識別子...`|当該データの詳細を表示する。|

### rm

- コマンド

  |コマンド|概要|
  |---|---|
  |`docker リソース rm 識別子...`|当該データを削除する。|

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

- コマンド

  |コマンド|概要|
  |---|---|
  |`docker container inspect コンテナ...`|コンテナの詳細を表示する。|

### run, create

- コマンド

  |コマンド|概要|
  |---|---|
  |`docker container run, create イメージ [コマンド] [引数]`|コンテナを作成する。|

- コマンド

  | コマンド | 概要                                                         |
  | -------- | ------------------------------------------------------------ |
  | `run`    | コンテナを**起動状態**で作成し、標準出力に繋ぐ。（`create`と`start`の組み合わせ） |
  | `create` | コンテナを**停止状態**で作成し、作成したコンテナIDを標準出力に出力する。 |

- 起動方法に関するオプション
  
  | オプション          | 概要                                                         |
  | ------------------- | ------------------------------------------------------------ |
  | `-d, --detach`      | コンテナを**デタッチド・モード**で起動する。<br />（現在のターミナルを占有しないようにする） |
  | `-i, --interactive` | ホストの標準入力を、コンテナの標準入力につなげる。           |
  | `-t, --tty`         | コンテナの標準出力を、ホストの標準出力につなげる。           |
  
- その他のオプション
  
  | オプション                                                   | 概要                                                         |
  | ------------------------------------------------------------ | ------------------------------------------------------------ |
  | `-p, --publish ホストのポート:コンテナのポート`              | ポートフォワーディングを行う。                               |
  | `-v, --volume [ボリュームまたはホスト側パス:]コンテナ側送信先` | ホスト側とコンテナの**ディレクトリを共有**させる。<br />ボリューム省略時は、匿名ボリュームとなる。 |
  | `-w, --workdir ディレクトリ`                                 | コンテナ内での作業ディレクトリを指定できる。                 |
  | `--network ネットワーク名`                                   | コンテナをネットワークに接続する。                           |
  | `--name コンテナ名`                                          | コンテナ名を指定する。<br />（指定しない場合は、適当な名前が与えられる） |
  | `--rm`                                                       | 終了時にコンテナを破棄する。                                 |

### commit

- コマンド

  |コマンド|概要|
  |---|---|
  |`docker container commit コンテナ [リポジトリ[:タグ]]`|コンテナのファイル変更や設定をもとに、新しいイメージを作成する。|

- これでイメージを作成すると、何の操作をしてできたものなのかが分かりにくいため、**暫定的に**Dockerイメージにしておきたい場合などのみ使うべき。（Dockerfileをできるだけ使うべき）

### attach

- コマンド

  |コマンド|概要|
  |---|---|
  |`docker container attach コンテナ`|実行中のコンテナで起動している**PID=1**のプロセスの標準入出力に接続する。（exitするとコンテナが停止する）|

### exec

- 当コマンドは、実行中のコンテナ内で新しいコマンドを実行する。
  [Dockerコンテナ内で操作 attachとexecの違い - Qiita](https://qiita.com/RyoMa_0923/items/9b5d2c4a97205692a560)

  ```bash
  docker container exec コンテナ コマンド
  ```

### cp

- コマンド

  |コマンド|概要|
  |---|---|
  |`docker container cp 移動元 移動先`|ファイルを移動する。|

- `コンテナ名:ファイル名`でコンテナを指定できる。

## image

### 概要

- イメージには、ID・リポジトリ名・タグがある。
- イメージは、`DockerHubのアカウント名/イメージ名[:タグ]`の形式で表す。
- タグ省略時は`latest`となる。

### build

- コマンド

  |コマンド|概要|
  |---|---|
  |`docker image build Dockerfileのあるディレクトリ`|**Dockerfile**などをもとにイメージを作成する。|

- オプション

  | オプション         | 概要                           |
  | ------------------ | ------------------------------ |
  | `-t イメージ`      | イメージ名とタグ名を指定する。 |
  | `--progress=plain` | ログを出力する。               |

### tag

- コマンド

  |コマンド|概要|
  |---|---|
  |`docker image tag イメージ 新しいイメージ`|イメージにタグを付与する。|

### pull

- コマンド

  |コマンド|概要|
  |---|---|
  |`docker image pull イメージ`|レジストリからイメージを取得する。|

### push

- コマンド

  |コマンド|概要|
  |---|---|
  |`docker image push イメージ`|レジストリにイメージをプッシュする。|

### history

- コマンド

  |コマンド|概要|
  |---|---|
  |`docker image history イメージ`|イメージがどう構築されたかを表示する。|

## volume

### 概要

- ボリュームは、ホストのファイルシステムの一部としてデータが保存される。
- 保存先は`/var/lib/docker/volumes/`であるが、そのパスでなく任意に付けた名前を使用する。

### create

- コマンド

  |コマンド|概要|
  |---|---|
  |`docker volume create ボリューム名`|ボリュームを作成する。|

## network

### 概要

- 複数のコンテナを一つのネットワークに繋げると、それらは通信できるようになる。
- Dockerインストール時に、自動的に3つのネットワークが作成されている。

### create

- コマンド

  |コマンド|概要|
  |---|---|
  |`docker network create ネットワーク名`|新しいネットワークを作成する。|

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
