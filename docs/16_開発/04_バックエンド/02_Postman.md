# 開発/バックエンド/Postman

## 共通

### 参考資料

- [Introduction | Postman Learning Center](https://learning.postman.com/docs/getting-started/introduction/)

### ワークスペース

- `baseUrl`を環境変数化することなどを考えると、ワークスペースはプロジェクトごとに分けるのがよさそう。

## 変数

### 種類

| 種類             | 概要                                                         | 設定箇所                     |
| ---------------- | ------------------------------------------------------------ | ---------------------------- |
| グローバル変数   | ワークスペース全体で有効な変数。                             | Environments → Globals       |
| コレクション変数 | コレクションのリクエスト内で有効な変数。<br />（環境に関わらず不変） | Collections → 各コレクション |
| 環境変数         | 環境に応じて変化する変数。                                   | Environments → 各環境        |
| データ変数       | 外部のCSV, JSONファイルをもとに定義される変数。              |                              |
| ローカル変数     | リクエストスクリプト内で一時的に有効な変数。                 |                              |

### 命名規則

- スネークケースが推奨？

### 参照

- URLやリクエストでは、`{{変数名}}`の形式で変数の値を参照できる。

### その他

- URL内で`:変数名`とすると、パスパラメータを使用できる。

### 参考資料

- [Using variables | Postman Learning Center](https://learning.postman.com/docs/sending-requests/variables/)

## Open API連携

### 共通

- [Postman Collection conversion | Postman Learning Center](https://learning.postman.com/docs/developer/collection-conversion/)

### GUIによる変換

- Postmanの上部「Import」から、SwaggerまたはOpen APIファイルをインポートできる。
- Open APIファイルを読み込むと、`baseUrl`というコレクション変数（デフォルトは`//localhost:8080`）が使われる。

### swagger2-postman2

- 「swagger2-postman2」は、SwaggerファイルからPostmanのコレクションファイルに変換できるCLIツール。
- 後述の「openapi-to-postman」に比べると、機能が不足している。
- [postmanlabs/swagger2-postman2: Module and library to convert Swagger 2.0 to a Postman Collection (v2.0)](https://github.com/postmanlabs/swagger2-postman2)

### openapi-to-postman

- 「openapi-to-postman」は、OpenAPIファイルからPostmanのコレクションファイルに変換できるCLIツール。
- [postmanlabs/openapi-to-postman: Plugin for converting OpenAPI 3.0 specs to the Postman Collection (v2) format](https://github.com/postmanlabs/openapi-to-postman)

## スクリプト

- `pm.response.json().任意のプロパティ`で、（JSON形式の）レスポンスを参照できる。
