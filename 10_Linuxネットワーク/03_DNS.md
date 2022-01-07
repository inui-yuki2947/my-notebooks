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

  - `nameserver`は、名前解決に使用するDNSサーバ
  - `domain`は、自サーバの所属するドメイン名
  - `search`は、名前解決の際に省略され得るドメイン名のリスト

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

### host

- `host`コマンドは、ホストやドメインに関する情報を、**簡易的に**表示する。

  ```bash
  host FQDNまたはIPアドレス [DNSサーバ]
  ```

- 例

  ```bash
  host www.google.co.jp 8.8.8.8
  ```

### dig

- `dig`コマンドは、ホストやドメインに関する情報を、**詳しく**表示する。

- 正引きをする場合

  ```bash
  dig [@DNSサーバ] FQDN [クエリタイプ] [クエリクラス]
  ```

- 逆引きをする場合

  ```bash
  dig [@DNSサーバ] -x IPアドレス [クエリタイプ] [クエリクラス]
  ```

- クエリタイプ

  - `a`は、ネットワークアドレス。（デフォルト）
  - `any` は、全ての情報。
  - `mx`は、メールサーバの情報。
  - `ns`は、ネームサーバの情報。
  - `soa`は、ゾーン（ドメインの範囲）の情報
  - `txt`は、テキストの情報。

- クエリオプション

  - クエリオプションは、`@DNSサーバ`の後、または末尾に記述する。
  - `+short`オプションで、IPアドレスのみを表示する。

- 例

  ```bash
  dig @8.8.8.8 www.google.co.jp +short
  ```

### nslookup

- `nslookup`コマンドは、ホストやドメインに関する情報を、**見やすく加工して**表示する。

  ```bash
  nslookup [FQDNまたはIPアドレス] [DNSサーバ]
  ```

- 例

  ```bash
  nslookup www.google.co.jp 8.8.8.8
  ```

### whois

- `whois`コマンドは、ドメインの所有者やネームサーバ、登録日などの情報を表示する。

  ```bash
  whoid ドメイン名またはIPアドレス
  ```

- 例

  ```bash
  whois google.co.jp
  ```
