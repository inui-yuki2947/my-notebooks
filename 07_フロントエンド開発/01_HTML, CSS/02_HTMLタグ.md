# HTMLタグ

## html

| タグ                | 概要             |
| ------------------- | ---------------- |
| `<html>内容</html>` | 最も外枠のタグ。 |

- lang属性を必ず指定すること。しない場合、フォントが適切なものにならないことがある。
  [多言語サイトでフォント指定の注意点 - Qiita](https://qiita.com/fukamiiiiinmin/items/6ab0bd54f8bfc89cfdd1)

## meta

| タグ     | 概要                                                         |
| -------- | ------------------------------------------------------------ |
| `<meta>` | Webページの情報を検索エンジンやブラウザなどに伝えるタグ。<br />`<head>`タグ内に書く。 |

- [メタタグとは？SEO効果は？metaタグ一覧と書き方まとめ](https://saruwakakun.com/html-css/basic/meta-tag)

## h1, p

### タグ

| タグ                                 | 概要               |
| ------------------------------------ | ------------------ |
| `<h1>内容</h1>`<br />`<h6>内容</h6>` | 見出し1〜6のタグ。 |
| `<p>内容</p>`                        | 段落を表すタグ。   |

## a

| タグ          | 概要           |
| ------------- | -------------- |
| `<a>内容</a>` | リンクのタグ。 |

- `target="_blank"`とすると、リンクを別タブで開くことができるが、以下のようにセキュリティに留意する。
  - `rel="noopener"`とすることで、新しいタブを別スレッドで開くことができる。
  - `rel=”noreferrer”`とすることで、参照先に対して参照元のリンクを渡さないようにすることができる。

## table

| タグ                  | 概要                 |
| --------------------- | -------------------- |
| `<table>内容</table>` | テーブル外枠のタグ。 |

- 列幅を固定したい場合は、`table-layout: fixed;`を用いる。
  - [table-layout - CSS: カスケーディングスタイルシート | MDN](https://developer.mozilla.org/ja/docs/Web/CSS/table-layout)
  - [CSSでtable幅を設定するためのまとめ: 小粋空間](http://www.koikikukan.com/archives/2012/08/20-005555.php)
- テーブル内での文字省略
  - [table-layout: fixed; せずに text-overflow: ellipsis; する - コンパイラかく語りき](https://chuckwebtips.hatenablog.com/entry/2017/07/09/183527)

## article, section

| タグ                                                     | 概要                       |
| -------------------------------------------------------- | -------------------------- |
| `<article>内容</article>`<br />`<section>内容</section>` | コンテンツをまとめたタグ。 |

## canonical

- 「ページの内容がほぼ同じURLが複数存在するとき、基準URLをどれか1つに決めて検索エンジンに教えてあげる」ためのタグ

  ```html
  <link rel="canonical" href="正規URL">
  ```

- [cacnonicalタグによるURL正規化のやり方│インデックス対策│Cluster SEO BLOG](https://cluster-seo.com/blog/canonical.html)
