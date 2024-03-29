# テキスト/JSON,YAML/YAML

## 共通

### 参考資料

- [プログラマーのための YAML 入門 (初級編)](https://magazine.rubyist.net/articles/0009/0009-YAML.html)

### 拡張子

- 拡張子には`.yml`または`.yaml`を用いるが、`.yml`が望ましい。

## 文法基礎

### インデント

- インデントには、タブ文字は使えず、スペースのみが使える。
- インデントはスペース2文字とすることが多い。

### 型

- 型は自動的に判別される。
- `yes`, `no`といったキー名は、`true`, `false`に変換される。
- 文字列をダブルクォーテーションまたはシングルクォーテーションで囲うと、強制的に文字列型になる。

### コメント

```yml
# コメント
```

### 書式

| 書式             | 概要                                                         |
| ---------------- | ------------------------------------------------------------ |
| ブロックスタイル | 複数行に渡る文字列に適する。                                 |
| フロースタイル   | 1行の文字列に適する。<br />当形式では、JSONをYAMLとしてみなせる。 |

- ブロックスタイルとフロースタイルは併用できる。

## ブロックスタイル

### 配列

```yml
- aaa
-
  - b1
  - b2
  -
    - b3.1
    - b3.2
- ccc
```

### ハッシュ

```yml
A: aaa
B:
  B1: bbb1
  B2: bbb2
C: ccc
```

## フロースタイル

### 配列

```yml
[aaa, bbb, ccc]
```

### ハッシュ

```yml
{ A: aaa, B: bbb, C: ccc }
```

## 複数行の改行

### 書式

```yml
text1: |
  aaa
  bbb
  ccc
```

### 複数行の文字列

| 書式         | 各行の改行   | 最終行の改行 | 最終行に続く改行 |
| ------------ | ------------ | ------------ | ---------------- |
| `文字列: ｜`  | 改行         | 改行         | 取り除く         |
| `文字列: ｜+` | 改行         | 改行         | 改行             |
| `文字列: ｜-` | 改行         | 取り除く     | 取り除く         |
| `文字列: >`  | 半角スペース | 改行         | 取り除く         |
| `文字列: >+` | 半角スペース | 改行         | 改行             |
| `文字列: >-` | 半角スペース | 取り除く     | 取り除く         |
