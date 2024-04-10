# Java/CUI/Gradle

## 共通

### 概要

- **Gradle**は、Apache AntやApache Mavenのコンセプトに基づくオープンソースビルド自動化システムである。

### GroovyとKotlin

- プロジェクト設定の宣言にはGroovyベース、もしくはKotlin Scriptベースのドメイン固有言語 (DSL) を採用している。

| 言語   | 概要                           |
| ------ | ------------------------------ |
| Groovy | 動的型付け言語。               |
| Kotlin | 静的型付け言語。こちらが推奨。 |

### 参考資料

- [Gradle Build Tool](https://gradle.org/)

## インストール

### SDKMAN

```bash
sdk install gradle 8.6
```

### Mac

```bash
brew install gradle
```

## gradle

### コマンド

| コマンド                | 概要                                                         |
| ----------------------- | ------------------------------------------------------------ |
| `gradle -?, -h, --help` | Gradleのヘルプを表示する。                                   |
| `gradle -v, --version`  | Gradleのバージョンを表示する。                               |
| `gradle init`           | カレントディレクトリで、対話的にGradleの初期化を行う。（各種ファイルを生成する） |

### ディレクトリ・ファイル

| ディレクトリ・ファイル                                       | 概要                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `gradle/`                                                    | ラッパーファイルのために生成されたディレクトリ。             |
| `gradle/libs.versions.toml`                                  | バージョンカタログ。                                         |
| `gradlew`<br />`gradlew.bat`                                 | 開始スクリプト。<br />`.bat`と付いているものはWindows用、付いていないものはMac、Linux用である。 |
| `settings.gradle(.kts)`                                      | ビルド設定とサブプロジェクトを定義するファイル。             |
| `buildSrc/build.gradle(.kts)`<br />`buildSrc/settings.gradle(.kts)` | 依存関係やビルドロジックを定義する、`buildSrc`のビルドスクリプト。 |
| `buildSrc/src/main/groovy/`<br />`buildSrc/src/main/kotlin/` | GroovyまたはKotlinで書かれた慣例プラグイン？のディレクトリ。 |
| `サブプロジェクト名/build.gradle(.kts)`                      | サブプロジェクトのビルドスクリプト。                         |
| `サブプロジェクト名/src/main`                                | サブプロジェクトのソースディレクトリ。                       |
| `サブプロジェクト名/src/test`                                | サブプロジェクトのテストソースディレクトリ。                 |

- **gradlew**は、gradleコマンドを適切なバージョンで実行するためのラッパー（Gradle + インストーラー）である。
- [Building Java Applications with libraries Sample](https://docs.gradle.org/current/samples/sample_building_java_applications_multi_project.html?_gl=1*namqo8*_ga*MTYzOTM0OTk2Ny4xNzEwMTUwMjk4*_ga_7W7NC6YNPT*MTcxMjczODAwMy45LjEuMTcxMjczODQzMC42MC4wLjA.)
