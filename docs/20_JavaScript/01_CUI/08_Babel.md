# JavaScript/CUI/Babel

## 共通

### 概要

- 「Babel」とは、JavaScriptのコードを、新しい書き方から古い書き方に変換するトランスパイラである。

### 参考資料

- [Babel · The compiler for next generation JavaScript](https://babeljs.io/)
- [Babelの基本的な使い方 - Qiita](https://qiita.com/one-kelvin/items/ae57250613aff3472917)

## インストール

### 共通

```bash
npm install --save-dev @babel/core @babel/cli @babel/preset-env
```

- 「@babel/preset-env」を導入することで、ES5形式に変換することができる。
