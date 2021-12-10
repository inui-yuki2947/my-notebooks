# HTML, CSS

## 共通

### 空要素

- 空要素（内容を持たない＝閉じタグが要らない要素）は、以下のように記述する。
  - `<タグ名>`：通常の書き方
  - `<タグ名 />`：XHTML準拠の書き方

### タグの入れ子

- [HTML5 コンテンツモデル ガイド | HTML5 Content Models Guide](https://webgoto.net/html5/)
- [【一覧表あり】HTML5でのタグの入れ子のルールを徹底まとめ | webliker](https://webliker.info/46840/)

### 特殊文字

- 特殊文字は、`&キーワード;`あるいは`&#番号;`の形式で記述する。[特殊文字リファレンス](http://www.htmq.com/text/)
- 特殊文字のコードを、contentプロパティの値にするには、`&#十進数;`→`¥0十六進数`のように書き換える。
  記号「»」の場合…「&#187;」→「¥0bb」
  [CSS - contentで記号（特殊文字）を表示する方法。コード表やシミュレーター有り(疑似要素:beforeや:afterにて)｜及川WEB室](https://www.oikawa-sekkei.com/web/design/css/content.html)

## HTML

### html

- lang属性を必ず指定すること。しない場合、フォントが適切なものにならないことがある。
  [多言語サイトでフォント指定の注意点 - Qiita](https://qiita.com/fukamiiiiinmin/items/6ab0bd54f8bfc89cfdd1)

### meta

- メタタグとはWebページの情報を、検索エンジンやブラウザなどに伝えるタグのことで、HTMLのheadタグ内に書く。
- [メタタグとは？SEO効果は？metaタグ一覧と書き方まとめ](https://saruwakakun.com/html-css/basic/meta-tag)

### a

- `target="_blank"`とすると、リンクを別タブで開くことができるが、以下のようにセキュリティに留意する。
  - `rel="noopener"`とすることで、新しいタブを別スレッドで開くことができる。
  - `rel=”noreferrer”`とすることで、参照先に対して参照元のリンクを渡さないようにすることができる。

### table

- 列幅を固定したい場合は、`table-layout: fixed;`を用いる。
  - [table-layout - CSS: カスケーディングスタイルシート | MDN](https://developer.mozilla.org/ja/docs/Web/CSS/table-layout)
  - [CSSでtable幅を設定するためのまとめ: 小粋空間](http://www.koikikukan.com/archives/2012/08/20-005555.php)
- 「jquery-resizable-columns」は、テーブル幅をドラッグで変更できるようにするプラグイン。ただし挙動がいまいち。
  - [GitHub](https://github.com/dobtco/jquery-resizable-columns)
  - [tableの幅を変更できるプラグイン「jQuery Resizable Columns」を使ってみる | cly7796.net]((http://cly7796.net/wp/javascript/using-plugin-jquery-resizable-columns-which-can-change-the-width-of-table/))
- テーブル内での文字省略
  - [table-layout: fixed; せずに text-overflow: ellipsis; する - コンパイラかく語りき](https://chuckwebtips.hatenablog.com/entry/2017/07/09/183527)

### article/section

- article/sectionタグは、コンテンツをまとめるために使用する。

### canonical

- 「ページの内容がほぼ同じURLが複数存在するとき、基準URLをどれか1つに決めて検索エンジンに教えてあげる」ためのタグ

  ```html
  <link rel="canonical" href="正規URL">
  ```

- [cacnonicalタグによるURL正規化のやり方│インデックス対策│Cluster SEO BLOG](https://cluster-seo.com/blog/canonical.html)

### その他

- [タグテスト - HTMLタグを入力してブラウザ表示チェック/ホームページマスター](https://hmaster.net/tagtest.html)

## CSS

### CSS設計

- [翻訳：CSSユーティリティクラスと「関心の分離」（いかにしてユーティリティファーストにたどり着いたか） - yuhei blog](https://yuheiy.hatenablog.com/entry/2020/05/25/021342)
- [BEMの考え方を基にしたHTML / CSSのid・classの命名規則 - Qiita](https://qiita.com/kitaro0729/items/3189ded5647475bc2ae7)

### 疑似要素と疑似クラス

- 「疑似要素」は、選択された要素の**特定の部分**にスタイル付けする。**コロン2つ。**
- 「擬似クラス」は、選択された要素に対して**特定の状態**を指定してスタイル付けする。**コロン1つ。**
- `nth-child`と`nth-of-type`
  - `nth-child`は、指定要素以外も含めた全要素のn番目で指定される。
  - `:nth-of-type(n+X)`で、ある要素のX番目以降（X番目から最後まで）
  nは0以上の整数？

### 中央寄せ

- [CSSで中央寄せする9つの方法（縦・横にセンタリング）](https://saruwakakun.com/html-css/basic/centering)
- [[CSS/HTML]上下左右中央揃えまとめ。 - Qiita](https://qiita.com/super-mana-chan/items/0d35a0b9ac1bf97593c8)

### ツールチップ

- ツールチップ内部でのHTML利用
  [Using any HTML inside the tooltip](http://memopad.bitter.jp/web/jQuery/jQueryTools/demos/tooltip/any-html.html)

### フッター

- [Sでコンテンツが少なくてもフッターをウィンドウ下部に表示する方法 | NxWorld](https://www.nxworld.net/tips/css-sticky-footer.html)

### margin/padding

- 4辺の指定は以下の通り。上から時計回りのイメージ。
  - 値を1つ指定した場合：[上下左右]
  - 値を2つ指定した場合：[上下][左右]
  - 値を3つ指定した場合：[上][左右][下]
  - 値を4つ指定した場合：[上][右][下][左]

### 横並び系

- floatを使うと要素が浮いてしまうので注意。
  [【脱初心者！】ふわふわお化け？floatバグで泣かないための3つのヒント！ | geechs magazine](https://geechs-magazine.com/tag/lifehack/20161005_1)
- 横並びの実現には、できるだけflextboxを使うべき。
  使用の際は、親要素に「display: flex」を指定するのみ。
  [CSSで横並びを表現できる5パターンとそれぞれの役割（使い所） | HPcode](https://haniwaman.com/side-by-side/)
- [【コピペOKのサンプル付き】Flexboxはこの5パターン覚えておけば大丈夫！ | HPcode](https://haniwaman.com/flexbox/)

## Bootstrap

- [はじめに - Bootstrap 4.3 - 日本語リファレンス](https://getbootstrap.jp/docs/4.3/getting-started/introduction/)

## Pug

- [Getting Started – Pug](https://pugjs.org/api/getting-started.html)
