# 開発/バックエンド/Swagger

## 共通

### 概要

- 「Open API」は「Swagger」の新しい名前。
- [API Documentation & Design Tools for Teams | Swagger](https://swagger.io/)
- [Swagger Editor](https://editor.swagger.io/)で、Web上でプレビューができる。

### スキーマオブジェクト

- オブジェクト型は以下のように定義する。

  ```yaml
  type: object
  properties:
    プロパティ名１:
    ...
  ```

- 配列型は以下のように定義する。

  ```yaml
  type: array
  items:
    ...
  ```

### 複合型

- 以下のキーワードを使うことで、型を複合させることができる。
  - oneof：いずれか一つの型
  - anyof：一つ以上を複合した型
  - allof：すべてを複合した型

### discriminator

- discriminatorキーワードを使うことで、anyOfまたはallOfでの型のヒントを与えることができる。
