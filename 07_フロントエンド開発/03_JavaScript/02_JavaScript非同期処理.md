# フロントエンド開発/JavaScript/JavaScript非同期処理

## 共通

### ドキュメント

- [JavaScriptと非同期処理の話 - Qiita](https://qiita.com/KuwaK/items/7e31f8b0ef26718c82ea)
- [async/await 入門（JavaScript） - Qiita](https://qiita.com/soarflat/items/1a9613e023200bbebcb3)

### Promise

- Promise生成時に渡す関数（executor）は、Promiseオブジェクトを生成した時点で実行される。
- `Promise.resolve()`は、引数で与えられた値で解決されたPromise オブジェクトを返す。

### async function

- async functionは、**戻り値としてPromiseを返す。** ただしその中に、functionの戻り値・例外の情報が入っている。（戻り値は`Promise.resolve`、例外は`Promise.reject`されて入っているイメージ）
- async functionは、await式を含むことができる。
  逆に、awaitを使わないfunctionは、asyncにする意味がない。
  （awaitしない場合は何も待たずに逐次実行されるだけなので）
- async function内でPromiseを返しても、Promiseが二重になることはない。
- async function内での`return X`と`return await X`は異なる。
  Xのエラーをasync function内で補足したい（try/catchで囲みたい）場合は、`return await X`を使うべき。

### await

- await式は、
  - async functionの実行を一時停止し、Promiseの解決または拒否を待つ。
  - 解決された場合はその値を返し、拒絶された場合はその値をスローする。
- Promiseをawaitすべきか否かは、**そのPromiseの解決を検知したいか否か**で決める。
- 「forEach」ではawaitできないので、「for of」などを使う。
