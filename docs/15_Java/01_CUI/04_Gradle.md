# Java/CUI/Gradle

## 共通

### 概要

- **Gradle**は、Apache AntやApache Mavenのコンセプトに基づくオープンソースビルド自動化システムである。
- プロジェクト設定の宣言にはGroovyベース、もしくはKotlin Scriptベースのドメイン固有言語 (DSL) を採用している。

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

| ディレクトリ・ファイル       | 概要                                             |
| ---------------------------- | ------------------------------------------------ |
| `gradle/`                    | ラッパーファイルのために生成されたディレクトリ。 |
| `gradlew`<br />`gradlew.bat` | 開始スクリプト。                                 |
| `settings.gradle.kts`        | ビルド設定とサブプロジェクトを定義するファイル。 |
