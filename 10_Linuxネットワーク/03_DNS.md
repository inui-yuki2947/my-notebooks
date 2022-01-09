# DNS

## 共通

### 概要

- DNSサーバには、DNSキャッシュサーバと権威DNSサーバ（ネームサーバ）がある。

### /etc/hosts

- `/etc/hosts`ファイルには、ホスト名とIPアドレスの対応を記述する。（簡易的なDNS）

- 例

  ```text
  127.0.0.1   localhost localhost.localdomain 
  192.168.0.10  station10  station10.example.net
  192.168.0.11  station11  station11.example.net
  ```

### /etc/resolv.conf

- `/etc/resolv.conf`ファイルには、参照先のDNSサーバを記述する。

- 項目

  | 項目         | 概要                                         |
  | ------------ | -------------------------------------------- |
  | `nameserver` | 名前解決に使用するDNSサーバ                  |
  | `domain`     | 自サーバの所属するドメイン名                 |
  | `search`     | 名前解決の際に省略され得るドメイン名のリスト |

- 例

  ```text
  nameserver     192.168.0.1
  nameserver     192.168.0.2
  domain         localdomain
  search         dm1.example.org   dm2.example.org
  ```

### /etc/nsswitch.conf

- `/etc/nsswitch.conf`ファイルには、名前解決を行う順序を記述する。

- 例

  ```text
  hosts: files dns
  ```

### /etc/systemd/resolved.conf

- `/etc/systemd/resolved.conf`ファイルは、systemdを採用したシステムで、systemd-resolvedサービスの設定を行う。

## コマンド

### host, dig, nslookup

- コマンド

  | コマンド                                                     | 概要                                                         | 例                                  |
  | ------------------------------------------------------------ | ------------------------------------------------------------ | ----------------------------------- |
  | `host FQDNまたはIPアドレス [DNSサーバ]`                      | ホストやドメインに関する情報を、**簡易的に**表示する。       | `host www.google.co.jp 8.8.8.8`     |
  | `dig [@DNSサーバ] FQDN [クエリタイプ] [クエリクラス]`        | ホストやドメインに関する情報を、**詳しく**表示する。（正引き） | `dig @8.8.8.8 www.google.co.jp`     |
  | `dig [@DNSサーバ] -x IPアドレス [クエリタイプ] [クエリクラス]` | ホストやドメインに関する情報を、**詳しく**表示する。（逆引き） |                                     |
  | `nslookup [FQDNまたはIPアドレス] [DNSサーバ]`                | ホストやドメインに関する情報を、**見やすく加工して**表示する。 | `nslookup www.google.co.jp 8.8.8.8` |

- クエリタイプ（`dig`）

  | クエリタイプ | 概要                               |
  | ------------ | ---------------------------------- |
  | `a`          | ネットワークアドレス（デフォルト） |
  | `any`        | 全ての情報                         |
  | `mx`         | メールサーバの情報                 |
  | `ns`         | ネームサーバの情報                 |
  | `soa`        | ゾーン（ドメインの範囲）の情報     |
  | `txt`        | テキストの情報                     |

- クエリオプション（`dig`）

  - クエリオプションは、`@DNSサーバ`の後、または末尾に記述する。
  - `+short`オプションで、IPアドレスのみを表示する。

### whois

- `whois`コマンドは、ドメインの所有者やネームサーバ、登録日などの情報を表示する。

  ```bash
  whoid ドメイン名またはIPアドレス
  ```

- 例

  ```bash
  whois google.co.jp
  ```
