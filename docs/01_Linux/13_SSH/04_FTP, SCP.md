# Linux/SSH/FTP, SCP

## 共通

### 概要

| 種類   | 概要                                    |
|------|---------------------------------------|
| FTP  | サーバーへファイルをトランスファーするためのプロトコル           |
| FTPS | FTPで転送される情報を、「SSL/TLS」を利用して暗号化するプロトコル |
| SFTP | FTPで転送される情報を、「SSH」を利用して暗号化するプロトコル     |
| SCP  | SSHを利用して、ファイルを転送するプロトコル               |

### 参考資料

- [FTP、FTPS、SFTP、SCPの違いってなんなんだ？ | 株式会社LIG](https://liginc.co.jp/398039)

## sftp

### コマンド

| コマンド                        | 概要                            |
|-----------------------------|-------------------------------|
| `sftp [ユーザー名@]ホスト名`         | SFTPでリモートに接続し、対話的にコマンドを実行する。  |
| `sftp [ユーザー名@]ホスト名`（標準入力あり） | SFTPでリモートに接続し、標準入力のコマンドを実行する。 |

## scp

### コマンド

| コマンド            | 概要               |
|-----------------|------------------|
| `scp コピー元 コピー先` | リモートでファイルをコピーする。 |

### コピー元・コピー先

| コピー元・コピー先       | 概要                         |
|-----------------|----------------------------|
| `パス`            | ローカルホストのパス。                |
| `ホスト名:パス`       | ローカルと同名のユーザー名、指定したホスト名のパス。 |
| `ユーザー名@ホスト名:パス` | 指定したユーザー名・ホスト名のパス。         |
| `任意の名前:パス`      | 設定ファイルに記述された接続先のパス。        |

## rsync

### 概要

- `rsync`コマンドは、賢い`scp`コマンド。

### オプション

| オプション      | 概要                       |
|------------|--------------------------|
| `--update` | 更新日時が新しいものを優先した上でコピーを行う。 |
| `--times`  | 更新日時をコピー元と同じにする。         |
| `--delete` | コピー先にしかないファイルを削除する。      |