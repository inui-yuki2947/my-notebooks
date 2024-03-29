# Java/CUI/java

## インストール

### Windows、Mac

- [Java Downloads | Oracle 日本](https://www.oracle.com/jp/java/technologies/downloads/)

### Ubuntu

```bash
apt install openjdk-17-jdk
```

### SDKMAN

```bash
sdk install java 17.0.10-librca
```

## java

### コマンド

| コマンド                      | 概要                             |
| ----------------------------- | -------------------------------- |
| `java --version`              | javaのバージョンを表示する。     |
| `java --help`                 | javaのヘルプを表示する。         |
| `java ファイル名 [引数]`      | 指定したJavaファイルを実行する。 |
| `java -jar ファイル名 [引数]` | 指定したJARファイルを実行する。  |

- [javaコマンド | Javaコード入門](https://java-code.jp/53)

### オプション

| オプション                           | 概要                                                         |
| ------------------------------------ | ------------------------------------------------------------ |
| `-cp, -classpath, --class-path パス` | クラスファイルを探すパス、及びzip/jarファイルを複数指定できる。<br />（デフォルトはカレントディレクトリ） |

## javac

### コマンド

| コマンド           | 概要                                                         |
| ------------------ | ------------------------------------------------------------ |
| `javac --version`  | javacのバージョンを表示する。                                |
| `javac --help`     | javacのヘルプを表示する。                                    |
| `javac ファイル名` | 指定したJavaファイルをコンパイルし、クラスファイル（`XXX.class`ファイル）を作成する。 |

- [javacコマンド | Javaコード入門](https://java-code.jp/55)

### オプション

| オプション        | 概要                                                         |
| ----------------- | ------------------------------------------------------------ |
| `-d ディレクトリ` | クラスファイルの出力ディレクトリを指定する。<br />（デフォルトはソースファイルと同じディレクトリ） |

## jar

### コマンド

| コマンド                         | 概要                                                    |
| -------------------------------- | ------------------------------------------------------- |
| `jar --version`                  | jarのバージョンを表示する。                             |
| `jar --help`                     | jarのヘルプを表示する。                                 |
| `jar オプション ファイル名1 ...` | 指定したクラスファイルをJAR形式に変換し、標準出力する。 |

- [jarコマンド | Javaコード入門](https://java-code.jp/51)

### オプション

| オプション                  | 概要                                |
| --------------------------- | ----------------------------------- |
| `-c, --create`              | JARファイルを作成する。             |
| `-t, --list`                | JARファイルの内容をリスト表示する。 |
| `-f, --file ファイル名`     | JARファイルを指定する。             |
| `-m, --manifest ファイル名` | マニフェストファイルを指定する。    |
| `-v, --verbose`             | 詳細情報を出力する。                |

- オプションはハイフンを省略することが可能。
