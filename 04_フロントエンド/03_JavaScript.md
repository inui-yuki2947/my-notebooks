# JavaScript

## ドキュメント

- [JavaScript リファレンス - JavaScript | MDN](https://developer.mozilla.org/ja/docs/Web/JavaScript/Reference)
- [JSFiddle - Code Playground](https://jsfiddle.net/)

## 文法

### 繰り返し処理

- 「for in」は、
  - 処理の順序が保証されない。
  - 仮引数には、**インデックス番号**が格納される。
- 「for of」は、
  - 仮引数には、**値**が格納される。
- [【備忘録】配列におけるfor in と for of の違い - Qiita](https://qiita.com/nak435/items/0620284e74138ddb3dd4)
- **オブジェクト**のループには、「Object.keys」を使う。
  [JavaScriptで配列やオブジェクトをループする良い方法を真剣に検討してみた - Qiita](https://qiita.com/endam/items/808a084859e3a101ab8f)

### this

- コールバックとして定義済み関数を指定する（「.」を付けずに関数を呼び出す）場合などは、thisに注意する。
- thisの束縛には、bind, call, applyが使える。
  - bindは、関数自体にthisを束縛するイメージ
  - call, applyは、実行時にthisを束縛するイメージ
    （なお、applyは第2引数が配列になるという違いがある）

### nullとundefined

- `undefined`は、自動的な値（エラーに近い値）のイメージ。
- 手動で値がないことを示す場合は、`null`にすべき。
- [JavaScript: nullとundefinedの違い](https://javascript.step-learn.com/contents/J037-null-undefined.html)

### スプレッド構文

- ドット3つで、オブジェクトや配列の中身を展開できる。

## 非同期処理

### 全体

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

## ブラウザ

### console

- コンソールでオブジェクトをログ出力する場合、あとからそのオブジェクトの状態を変更してしまうと、ログ上ではそのログ出力時点のオブジェクトの状態でなく、最新のオブジェクトの状態が表示されるので注意。
- [console.log の落とし穴：console.log にはオブジェクトの参照が渡るので気を付けよう - Qiita](https://qiita.com/POPOPON/items/edc7a522d2ee9a50cc3a)
- [JavaScriptでの賢いconsole.log( )の使い方 & その他便利なconsole.xxx( )使い方まとめ (dir・table・warn・groupとか) - Qiita](https://qiita.com/mtoyopet/items/7274761af5424cee342a)

### ソースの表示

- 「ページのソースを表示」では、SSR部分が静的なソースが表示される。
- デベロッパーツールでは、CSR部分も適用された動的なソースが表示される。

### スマホ

- スマホでデベロッパーツールを使いたい場合は以下。
  [Android の Chrome で開発者ツールを使う方法 - Qiita](https://qiita.com/hojishi/items/12b726f8b02ef3d713e4)
  [実機iPhoneのSafariでWebインスペクタを使ってデバッグする方法 - Qiita](https://qiita.com/unsoluble_sugar/items/2a3d06631a6b8259dc44)

### その他

- `location.href`で、ページのURLを取得できる。
- `document.title`で、ページのタイトルを取得できる。

## Node.js

### インストール

- [MacにNode.jsをインストール - Qiita](https://qiita.com/kyosuke5_20/items/c5f68fc9d89b84c0df09)

### 使用方法

- 「node」コマンドで、REPL（対話的実行）が可能。
  「node [ファイル名]」コマンドで、jsファイルを実行。

## JSDoc

- [Use JSDoc: Index](https://jsdoc.app/index.html)

## ESLint

- [ESLint - Pluggable JavaScript linter](https://eslint.org/)

## jQuery

### jQuery UI

- [jQuery UI](https://jqueryui.com/)
- [Resizable Table Columns Using jQuery UI](https://codepen.io/clarmond/pen/bdapme)
- [Resizable | jQuery UI 1.10 日本語リファレンス | js STUDIO](https://js.studio-kingdom.com/jqueryui/interactions/resizable)

## lodash

- [Lodash Documentation](https://lodash.com/docs/4.17.15)
- [lodash.js fiddle - JSFiddle - Code Playground](https://jsfiddle.net/w8yuvgqn/)
- チェーン記法を用いると、メソッドチェーンで書ける。
  ただし最後に「value()」をつけないと、中間オブジェクトを返すことがある。
  [Lodashのチェーン記法について - Qiita](https://qiita.com/kurararara/items/fb470ea71e59cd0371d4)

## その他

- 「setTimeout」は動作がいまいち。「requestAnimationFrame」がよさそう。
  [[JavaScript] スクロールイベントを最適化してパフォーマンスを向上させる方法 - 零弐壱蜂](https://b.0218.jp/20180718164756.html)
- [localStorageで複数のデータを保存する ｜ Tips Note by TAM](https://www.tam-tam.co.jp/tipsnote/javascript/post5978.html)
- [なんとなく CORS がわかる...はもう終わりにする。 - Qiita](https://qiita.com/att55/items/2154a8aad8bf1409db2b)
- [さいきょうの二重サブミット対策 - Qiita](https://qiita.com/syobochim/items/120109315f671918f28d)
