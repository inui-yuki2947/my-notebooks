# X Window System

## 共通

### 概要

- **X Window System（X、X11）**は、ビットマップディスプレイ上でウィンドウシステムを提供する表示プロトコルである。
- リファレンス実装として、**XFree86**、及びそこから派生した**X.Org**がある。
- 新しいプロトコルとして、**Wayland**というプロトコルがある。

### Xサーバーとクライアント

- Xサーバーとクライアント

  | 種類          | 概要                                                   |
  | ------------- | ------------------------------------------------------ |
  | Xサーバー     | ハードウェアの管理を行い、ディスプレイへの出力を行う。 |
  | Xクライアント | ユーザーアプリケーションの管理を行う。                 |

- 一般的なクライアント・サーバーの配置と逆になるので注意。

### 設定

- 設定は下記で行う。

  - `/etc/X11/xorg.conf`ファイル
  - `/etc/X11/xorg.conf.d`ディレクトリ以下のファイル

- `/etc/X11/xorg.conf`ファイルは、複数のセクションから構成されている。

  ```text
  Section セクション名
      項目 値
      ...
  EndSection
  ...
  ```

- セクション

  | 名称           | 概要                                   |
  | -------------- | -------------------------------------- |
  | `ServerLayout` | 入出力デバイスに関する設定             |
  | `Files`        | フォントやカラーデータベースのパス名   |
  | `InputDevice`  | キーボードやマウスなどの入力装置の設定 |
  | `Device`       | ビデオカードの設定                     |

- `Xorg -configure`コマンドは、ハードウェアをスキャンして、`xorg.conf`ファイルを自動生成する。

### ログファイル

- Xのログは、`/var/log/Xorg.0.log`に格納される。
- デスクトップアプリケーションのログは、`~/.xsession-errors`に格納される。

### startx

- `startx`コマンドは、X Window Systemを起動する。

### xhost

- `xhost`コマンドは、XクライアントがXサーバーを利用できるよう許可を与える。

  ```bash
  xhost +|- ホスト名
  ```

- 環境変数`DISPLAY`で、Xサーバーを指定する。

  ```text
  export DISPLAY=Xサーバーのホスト名:ディスプレイ番号
  ```

- 例

  ```bash
  [localpc]  $ xhost +remotepc
  [remotepc] $ export DISPLAY=localpc:0
  ```

## グラフィカルデスクトップ

### ディスプレイマネージャ

- **ディスプレイマネージャ**は、GUIでログイン画面を表示し、ユーザー認証を行う。
- 例
  - XDM（X Window Display Manager）
  - GDM（GNOME Display Manager）
  - SDDM（Simple Desktop Display Manager）
  - LightDM（Light Display Manager）
- **XDMCP（X Display Manager Control Protocol）**は、ディスプレイマネージャをネットワーク越しに利用できるプロトコルである。

### ウィンドウマネージャ

- **ウィンドウマネージャ**は、ウィンドウの配置や外観を管理する。
- 例
  - twm
  - FVWM
  - Mutter

### デスクトップ環境

- ウィンドウマネージャーやアプリケーションを含めた**統合デスクトップ環境**を使うことが一般的である。
- 代表例として、**GNOME**や**KDE Plasma**がある。
- より快適なデスクトップ環境として、**Xfce**などもある。

### リモートデスクトップ

- 一覧

  | 名称                                                         | 概要                                                         |
  | ------------------------------------------------------------ | ------------------------------------------------------------ |
  | VNC（Virtual Network Computing）                             | クロスプラットフォーム対応のリモートデスクトップソフトウェア。 |
  | RDP（Remote Desktop Protocol）                               | Windows標準のリモートデスクトッププロトコル。                |
  | SPICE（Simple Protocol for Independent Computing Environments） | RDPと同様の画面転送プロトコルで、オープンソースで開発されている。 |
