# バックエンド開発/その他/Postman

## 共通

### 概要

- [Introduction | Postman Learning Center](https://learning.postman.com/docs/getting-started/introduction/)

### Open API連携

- Open APIファイルを読み込むと、`baseUrl`というコレクション変数（デフォルトは`//localhost:8080`）が使われる。
- `baseUrl`を環境変数化することなどを考えると、ワークスペースはプロジェクトごとに分けるのがよさそう。

### スクリプト

- `pm.response.json().任意のプロパティ`で、（JSON形式の）レスポンスを参照できる。
