# Bash/その他/GnuPG

## gpg

### コマンド

|コマンド|概要|
|---|---|
|`gpg サブコマンド`|GnuPG (Gnu Privacy Guard)を扱える。|

### サブコマンド

|サブコマンド|概要|
|---|---|
|`--gen-key`|公開鍵・秘密鍵を作成する。|
|`--full-gen-key`|全てのオプションを指定して、公開鍵・秘密鍵を作成する。|
|`--gen-revoke メールアドレス`|失効証明書（パスフレームが漏れてしまった場合に、鍵を無効化するもの）を作成する。|
|`--export メールアドレス`|公開鍵をエクスポートする。|
|`--import 鍵ファイル`|公開鍵をインポートする。|
|`-k, --list-public-keys, --list-keys`|公開鍵の一覧を表示する。|
|`-K, --list-secret-keys`|秘密鍵の一覧を表示する。|
|`-c, --symmetric ファイル名`|共通鍵でファイルを暗号化する。|
|`-e, --encrypt ファイル名`|公開鍵でファイルを暗号化する。|
|`-d, --decrypt ファイル名`|公開鍵でファイルを復号する。（デフォルト）|
|`-s, --sign ファイル名`|ファイルに署名を行う。|
|`--verify ファイル名`|ファイルの署名を検証する。|

### オプション

| オプション                 | 概要                                          |
| -------------------------- | --------------------------------------------- |
| `-a, --armor`              | ASCII armored形式（拡張子`.asc`）で出力する。 |
| `-o, --output ファイル名`  | 出力ファイル名を指定する。                    |
| `-r, --recipient 受信者名` | 受信者名を指定する。                          |

### その他

- 暗号化ファイルの拡張子は、`.gpg`となる。
- デフォルトでは、公開鍵・秘密鍵は下記に作成される。

  - 公開鍵：`~/.gnupg/pubring.gpg`
  - 秘密鍵：`~/.gnupg/secring.gpg`

## gpg-agent

### 概要

- gpg-agentは、ssh-agentと同様、秘密鍵を管理し、パスフレーズのキャッシュを行う。
