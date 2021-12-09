# Linux
## OS
### Linuxディストリビューション
- Linuxディストリビューションには以下のものがある。

  ディストリビューション|例|特徴|パッケージ管理
  --|--|--|--
  RedHat (RHEL)系|Fedora, CentOS|有償で安定性がある。|rpm, yum
  Debian系|Ubuntu|無償で開発スピードが速い。|dpkg, apt

- 「Alpine Linux」は、軽量なLinuxディストリビューション。

### WSL
- WSL（Windows Subsystem for Linux）とは、Linuxのバイナリ実行ファイルを、Windows 10およびWindows Server上でネイティブ実行するための互換レイヤー。

### GNUとBSD
- LinuxはGNU系、MacはBSD系であり、挙動が異なるコマンドがある。
- MacでGNU版のコマンドを利用するには、GNU版のコマンドをインストールするとよい。
  ```bash
  brew install grep
  brew install gnu-sed
  ```

## ディレクトリ
### 概要
- [Linuxディレクトリ構造 - Qiita](https://qiita.com/nys9302/items/a8ddeedd3cd9d0deb332)

### /dev
- デバイスファイルが格納される。
- udev (Userspace DEVice management)という仕組みによって、自動的に作成される。
- 疑似デバイス
  - `/dev/null`は、あらゆる入力を受け付け、それを捨てる。
  - `/dev/zero`は、NULL文字を出力する。
  - `/dev/random`は、乱数を再利用せず、真の乱数文字列を出力する。
  - `/dev/urandom`は、乱数を再利用して、擬似乱数文字列を出力する。

### /proc
- カーネルが認識しているデバイスの情報が確認できる。

### /home
- 一般ユーザーがそれぞれ利用するファイルが格納される。

### /root
- rootユーザーが利用するファイルが格納される。

### /var
- 各種ログファイルやメールスプールなど、更新頻度の高いファイルが格納される。

### /usr
- プログラムやライブラリ、ドキュメントが格納される。

### /lib
- カーネルやプログラムに必要な各種ライブラリが格納される。

### /etc
- 設定ファイルなどが格納される。

## ハードウェア
### BIOS/UEFI
- BIOSは、キーボードやハードディスクなどのデバイスを制御する、もっとも基本的な制御プログラムである。
- 現在では、BIOSの後継となるファームウェア規格の、UEFI (Unified Extensible Firmware Interface)が普及している。

### lspci
- `lspci`コマンドは、PCIデバイスの情報を表示する。
- PCI (Peripheral Component Interconnect)は、コンピュータ内部で装置間を結ぶデータ伝送路の規格の一つ。

### lsusb
- `lsusb`コマンドは、USBデバイスの情報を表示する。

### lsmod
- `lsmod`コマンドは、ロードされているカーネルモジュールを表示する。

### modprobe
- `modprobe`コマンドは、カーネルモジュールのロード・アンロードを行う。

## 起動とシャットダウン
### Linux起動の流れ
1. BIOS/UEFI
1. ブートローダ
1. カーネル
1. 初期プロセス

### 初期プロセス
- 初期プロセスとしては、SysVinit, Upstart, systemdがある。（現在はsystemdが主流）

## ブートローダ
### 概要
- ブートローダの主な役割は、起動デバイス上からカーネルをメモリ上に読み込むことである。

### GRUB
- GRUB (GRand Unified Bootloader)は、Linuxの代表的なブートローダである。
- GRUBには以下のバージョンがある。
  - バージョン0.9x系の、GRUB Legacy
  - バージョン1.9x系の、GRUB 2

### grub-install
- `grub-install`コマンドで、GRUBをインストールできる。
  ```bash
  grub-install インストールデバイス
  ```

### grub-mkconfig
- `grub-mkconfig`コマンドは、`/etc/default/grub`ファイルをもとに、`/boot/grub/grub.cfg`ファイルを生成する。
- GRUB Legacyでは、当コマンドを使わず、`/boot/grub/menu.lst`ファイルを直接編集する。

## パーティション
### 概要
- Linuxでは、ハードディスクをいくつかの**パーティション**に分割して利用する。
- `/home, /var`ディレクトリは、別パーティションに分割するべき。
- システムによっては、ディスクの先頭パーティションとして、数100MB程度を`/boot`パーティションに割り当てたほうがよい場合がある。
- UEFIを使ったシステムでは、FATファイルシステムでフォーマットされた、EFIシステムパーティション（ESP）が必要である。

### スワップ領域
- スワップ領域は、仮想メモリ（物理メモリが不足した場合のメモリの延長）として利用される。
- サイズの目安は、物理メモリの1〜2倍程度。

### LVM
- 最近では、LVMと呼ばれるディスク管理が行われることもある。

## Cloud-init
- Cloud-initは、インスタンスを初期化する仕組みである。
- 個々のインスタンスを識別するには、D-BusマシンIDが利用できる。

