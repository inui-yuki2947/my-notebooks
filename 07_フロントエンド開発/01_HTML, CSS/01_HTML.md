# HTML

## 共通

### 基本構造

```html
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>タイトル</title>
</head>

<body>
内容
</body>
</html>
```

### タグの入れ子

- [HTML5 コンテンツモデル ガイド | HTML5 Content Models Guide](https://webgoto.net/html5/)
- [【一覧表あり】HTML5でのタグの入れ子のルールを徹底まとめ | webliker](https://webliker.info/46840/)

### 空要素

- 空要素（内容を持たない＝閉じタグが要らない要素）は、以下のように記述する。

| タグ         | 概要                |
| ------------ | ------------------- |
| `<タグ名>`   | 通常の書き方。      |
| `<タグ名 />` | XHTML準拠の書き方。 |

### 特殊文字

- 特殊文字は、`&キーワード;`あるいは`&#番号;`の形式で記述する。[特殊文字リファレンス](http://www.htmq.com/text/)
- 特殊文字のコードを、contentプロパティの値にするには、`&#十進数;`→`¥0十六進数`のように書き換える。
  記号「»」の場合…「&#187;」→「¥0bb」
  [CSS - contentで記号（特殊文字）を表示する方法。コード表やシミュレーター有り(疑似要素:beforeや:afterにて)｜及川WEB室](https://www.oikawa-sekkei.com/web/design/css/content.html)
