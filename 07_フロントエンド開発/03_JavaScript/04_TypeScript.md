# フロントエンド開発/JavaScript/TypeScript

## 共通

### 概要

- [TypeScript: The starting point for learning TypeScript](https://www.typescriptlang.org/docs/)
- [TypeScript 日本語ハンドブック | js STUDIO](https://js.studio-kingdom.com/typescript/)
- [TypeScript: TS Playground - An online editor for exploring TypeScript and JavaScript](https://www.typescriptlang.org/play)

### アンビエント宣言

- アンビエント宣言を行うことで、翻訳機が知らないような機能を使う時でも、コンパイルエラーが起きないようにできる。

  ```ts
  declare var foo: any;
  ```

### 型エイリアス

- 型エイリアス（type演算子）は、型に別名をつけることができる。
  [TypeScriptの型システム - TypeScript Deep Dive 日本語版](https://typescript-jp.gitbook.io/deep-dive/type-system#eiriasutype-alias)

  ```ts
  type StrOrNum = string|number;
  ```

- typeとinterfaceは共通点もあるが、typeは交差型などが使えるなどの違いがある。
  [TypeScriptのInterfaceとTypeの比較 - Qiita](https://qiita.com/tkrkt/items/d01b96363e58a7df830e)
- 一般的にはinterfaceを使い、共用体やタプル型を使いたいときにtypeを使うべき。
  [高等な型 | TypeScript 日本語ハンドブック | js STUDIO](https://js.studio-kingdom.com/typescript/handbook/advanced_types)

### typeof

- typeof演算子は、通常は文字列を返すが、TypeScriptの型コンテキストでは型を返す。
  [TypeScript再入門 ― 「がんばらないTypeScript」で、JavaScriptを“柔らかい”静的型付き言語に - エンジニアHub｜Webエンジニアのキャリアを考える！](https://eh-career.com/engineerhub/entry/2019/04/16/103000#%E5%9E%8B%E3%82%B3%E3%83%B3%E3%83%86%E3%82%AD%E3%82%B9%E3%83%88)

  ```ts
  function add(a: number, b: number): number {
      return a + b;
  }

  // 「値コンテキスト」だと値を返す
  const v = typeof add; // => "function"

  // 「型コンテキスト」では型を返す
  type f = typeof add; // => (a: number, b: number) => number
  ```

### タプル型

- タプル型とは、一つの変数に複数の型を含められる型のようなもので、以下のように定義する。

  ```ts
  const hoge: [string, number] = ['HOGE', 100]
  ```

- タプル型を用いると、**多値関数**を定義できる。（ただ、単なるインターフェースでよい感はある）
- [TypeScriptの型: タプルを定義する (Tuple types)｜まくろぐ](https://maku.blog/p/6uzqf4q/)

### 連想配列

- 連想配列は以下のように定義できる。

  ```ts
  const userAges: { [name: string]: number } = {};  
  userAges['maku'] = 14; 
  userAges['hemu'] = 6;
  ```

- [TypeScriptの型: 辞書型を定義する (Dictionary)｜まくろぐ](https://maku.blog/p/x3ocp9a/)

### Index signature（インデックス型）

- Todo あとで調べる

### namespace

- <http://js.studio-kingdom.com/typescript/handbook/namespaces>
- <https://qiita.com/ConquestArrow/items/494d798a4e0788c41a7c>
- 上記記事では触れられていないが、クラス内にstatic readonlyでもよい気はする

### thisの型付け

- **関数の第1引数**にthisを書くことで、thisの型を指定できる。
  [TypeScriptでthisの型を指定する | 山本隆の開発日誌](https://www.gesource.jp/weblog/?p=7703)
