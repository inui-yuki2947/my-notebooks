# yum, dnf, apt

## 共通

| 名称     | インストール | アンインストール | インデックス更新 | 更新                  | 一覧表示     | 表示 |
| -------- | ------------ | ---------------- | ---------------- | --------------------- | ------------ | ---- |
| yum, dnf | install      | remove           | 不要             | update                | list, search | info |
| apt      | install      | remove, purge    | update           | upgrade, dist-upgrade | list, search | show |

## yum, dnf

### 共通

- `yum`（Yellowdog Updater Modified）コマンドは、RPMパッケージを包括的に管理する。

  ```bash
  yum サブコマンド
  ```

- `dnf`（Dandified Yum）コマンドは、`yum`コマンドの後継である。
- yumの設定は、下記で行う。
  - `/etc/yum.conf`ファイル
  - `/etc/yum.repos.d`ディレクトリ以下のファイル

### check-update

- `check-update`サブコマンドで、アップデートが存在するパッケージ一覧を表示する。

  ```bash
  yum check-update
  ```

### list

- `list`サブコマンドで、パッケージの一覧を表示する。

  ```bash
  yum list
  ```

- `--installed`オプションで、インストール済みのパッケージのみ表示する。

### groups

- `groups list`サブコマンドで、パッケージグループの一覧を表示する。

  ```bash
  yum groups list
  ```

- `groups install`サブコマンドで、パッケージグループ単位でインストールする。

  ```bash
  yum groups install パッケージグループ
  ```

## apt

### 共通

- `apt`（Advanced Packaging Tool）コマンドは、**インターネット経由で**、Debian形式パッケージを扱える。

  ```bash
  apt サブコマンド
  ```

- 種類
  - `apt`コマンドは、パッケージのインストール・アンインストール・更新・表示ができる。（推奨）
  - `apt-get`コマンドは、パッケージのインストール・アンインストール・更新ができる。
  - `apt-cache`コマンドは、パッケージの表示ができる。
- `/etc/apt/sources.list`には、パッケージを管理しているサイトのURLを記述する。

### remove, purge

- `remove`サブコマンドで、設定ファイルを残して、パッケージをアンインストールする。

  ```bash
  apt remove パッケージ名
  ```

- `purge`サブコマンドで、設定ファイルも含め、パッケージをアンインストールする。

  ```bash
  apt purge パッケージ名
  ```

### upgrade, dist-upgrade

- `upgrade`サブコマンドで、インストール済みのパッケージを更新する。

  ```bash
  apt upgrade パッケージ名
  ```

- `dist-upgrade`サブコマンドで、パッケージ構成変更にも追随しつつ、インストール済みのパッケージを更新する。

  ```bash
  apt dist-upgrade パッケージ名
  ```

### autoremove

- `autoremove`サブコマンドで、不要になったパッケージを削除する。

  ```bash
  apt autoremove
  ```

### depends

- `depends`サブコマンドで、指定したパッケージの依存関係を表示する。

  ```bash
  apt depends パッケージ名
  ```

## zypper

### 共通

- `zypper`コマンドは、openSUSEなどでパッケージ管理を行える。

  ```bash
  zypper サブコマンド
  ```

### repos, lr

- `repos, lr`サブコマンドは、リポジトリの一覧を表示する。
