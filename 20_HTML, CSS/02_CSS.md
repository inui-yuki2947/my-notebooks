# CSS

## 共通

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