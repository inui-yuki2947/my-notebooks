# Programming/Java, Kotlin/Kotlin

## 共通

### 対話的環境

- [Kotlin Playground: Edit, Run, Share Kotlin Code Online](https://play.kotlinlang.org/)
- kotlinc-jvm

  ```bash
  kotlinc-jvm
  ```

## 型

### Char型

- Char型は、1文字を表す型。
- 文字列を**シングルクォーテーション**で囲うと、Char型となる。

### Byte型

- Byte型は、Int型などと同じ数値型で、8ビットの長さ。（「-128 ~ 127」の範囲の数値）

### 配列

- 配列には、基本型としてのArray（Javaでの配列）と、コレクションパッケージとしてのList（JavaでのList）などがあり、基本的にはコレクションパッケージを使うのがよい。

### 共変と反変

- 共変 (covariant): 広い型（例：double）から狭い型（例：float）へ変換する(できる)こと。
- 反変 (contravariant): 狭い型（例：float）から広い型（例：double）へ変換する(できる)こと。
- 不変 (invariant): 型を変換できないこと。
- 双変 (bivariant): 広い型にも狭い型にも変換できること。
- 共変にする（outをつける）ということは、それを出力用としてしか使用しないということ。
- 反変にする（inをつける）ということは、それを入力用としてしか使用しないということ。
共変の例はList、反変の例はComparator
<https://maku77.github.io/kotlin/generics/variant.html>

## 日時

### 型

- `LocalDateTime`は、オフセット・タイムゾーンのない型。
- `OffsetDateTime`は、オフセットがあり、タイムゾーンがない型。
- `ZonedDateTime`は、オフセット・タイムゾーンのある型。

## その他

### 三項演算子

- 三項演算子のような記述がしたい場合は、以下のように書く。

  ```kotlin
  if (条件) 値1 else 値2
  ```

### スプレッド演算子

- `*配列`などとすると、その配列の要素が展開できる。