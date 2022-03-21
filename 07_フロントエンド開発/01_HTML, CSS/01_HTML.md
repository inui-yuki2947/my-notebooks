# HTML

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
