# その他/その他/PlantUML

## 共通

### 概要

- 「PlantUML」は、テキストベースでUMLを記述できる言語。
- IntelliJでは、[PlantUML integration](https://plugins.jetbrains.com/plugin/7017-plantuml-integration)というプラグインを入れる。
- ファイル拡張子としては、`.pu`や`.puml`などを使う。

### ドキュメント

- [シンプルなテキストファイルで UML が書ける、オープンソースのツール](https://plantuml.com/ja/)
- [PlantUML使い方メモ - Qiita](https://qiita.com/opengl-8080/items/98c510b8ca060bdd2ea3)

### 書式

- 書式

  ```text
  @startuml
  内容
  @enduml
  ```

## シーケンス図

### 基本

- 実線にする場合

  ```text
  分類子1 -> 分類子2[:メッセージ]
  ```

- 破線にする場合

  ```text
  分類子1 --> 分類子2[:メッセージ]
  ```

### 分類子

- `participant`などで分類子を宣言すると、分類子の順番・役割・名前などを変更できる。

  ```text
  役割 分類子名 [as 新しい分類子名]
  ```

- 役割には、`participant, actor, database`などがある。

### タイトル・ヘッダー・フッター

- `title, header, footer`キーワードで、タイトル・ヘッダー・フッターを指定できる。

  ```text
  title タイトル名
  ```

### グループ化

- `alt/else, loop, group`キーワードなどで、グループ化ができる。

  ```text
  group
      内容
  end
  ```

### ノート

- メッセージ後の`note left|right`キーワードで、ノートを付けられる。
- 1行で書く場合

  ```text
  note left|right: 内容
  ```

- 複数行で書く場合

  ```text
  note left|right
  内容
  end note
  ```
