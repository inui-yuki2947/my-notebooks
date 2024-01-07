# Kotlin/CUI/kotlin

## インストール

### Windows、Mac

1. [Kotlinのリポジトリ](https://github.com/JetBrains/kotlin/)から、`kotlin-compiler-X.X.X.zip`をダウンロードする。
2. 同ファイルを任意のディレクトリに展開し、PATHを通す。

### Ubuntu

1. SDKMANをインストールする。

2. コマンドを実行する。

   ```bash
   sdk install kotlin
   ```

### 参考資料

- [Kotlin/インストール方法 - Wikibooks](https://ja.wikibooks.org/wiki/Kotlin/%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E6%96%B9%E6%B3%95)

## kotlin

### コマンド

| コマンド                   | 概要                                                |
| -------------------------- | --------------------------------------------------- |
| `kotlin -version`          | kotlinのバージョンを表示する。                      |
| `kotlin -h, -help`         | kotlinのヘルプを表示する。                          |
| `kotlin`                   | REPLでKotlinを実行する。                            |
| `kotlin ファイル名 [引数]` | 指定したクラスファイルまたはJARファイルを実行する。 |

## kotlinc

### コマンド

| コマンド             | 概要                                                         |
| -------------------- | ------------------------------------------------------------ |
| `kotlinc -version`   | kotlincのバージョンを表示する。                              |
| `kotlinc -h, -help`  | kotlincのヘルプを表示する。                                  |
| `kotlinc ファイル名` | 指定したKotlinファイルをコンパイルし、クラスファイル（`XXX.class`ファイル）を作成する。 |

### オプション

| オプション                           | 概要                                                |
| ------------------------------------ | --------------------------------------------------- |
| `-d ディレクトリまたはJARファイル名` | 指定されたディレクトリまたはJARファイルに出力する。 |
| `-include-runtime`                   | KotlinのランタイムもJARファイルに一緒にまとめる。   |
