# npm, yarn

## 共通

### init

- コマンド

  |コマンド|概要|
  |---|---|
  |`npm init`|カレントディレクトリに`package.json`を作成する。|

## npm

### 概要

- npm (Node Package Manager)は、公式のJavaScriptパッケージマネージャー。

### ファイル

- `package.json`に、インストールするモジュールを記載する。
- `package-lock.json`に、インストールされたモジュールが自動で記載される。
- `node_modules`に、モジュールの中身が配置される。

### install

- 引数を指定しない場合、`package.json`の内容に従ってインストールを行う。

  ```bash
  npm install
  ```

- 引数としてパッケージ名を指定する場合、特定のパッケージのみインストールする。

  ```bash
  npm install パッケージ名
  ```

- `-g`オプションで、グローバルインストールができる。

## yarn

### 概要

- yarnは、サードパーティのJavaScriptパッケージマネージャー。
- npmと同じ`package.json`が使え、npmに比べ速度が速い。
- [Home | Yarn - Package Manager](https://yarnpkg.com)

### ファイル

- `package.json`に、インストールするモジュールを記載する。
- `yarn.lock`に、インストールされたモジュールが自動で記載される。
- `node_modules`に、モジュールの中身が配置される。

### CLI

- コマンド

  |コマンド|概要|
  |---|---|
  |`yarn install`|package.jsonの内容に従ってインストールを行う。|
  |`yarn add パッケージ名`|特定のパッケージのみインストールする。|
