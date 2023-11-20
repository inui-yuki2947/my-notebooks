# JavaScript/CUI/package.json

## scripts

### 項目

| 項目      | 概要                              |
| --------- | --------------------------------- |
| `scripts` | タスク（npm-scripts）を記述する。 |

### 書式

```json
{
  ...
  "scripts": {
    "タスク名1": "コマンド1",
    "タスク名2": "コマンド2",
    ...
  },
  ...
}
```

### その他

- `preタスク名`というタスクが存在すれば、タスク実行前にそのタスクが実行される。
- `postタスク名`というタスクが存在すれば、タスク実行後にそのタスクが実行される。

## type

### 項目

| 項目   | 概要                                    |
| ------ | --------------------------------------- |
| `type` | 拡張子`.js`のファイルをどう認識するか。 |

### 値

| 値         | 概要                                                        |
| ---------- | ----------------------------------------------------------- |
| `module`   | 拡張子`.js`のファイルは、`.mjs`とみなされる。               |
| `commonjs` | 拡張子`.js`のファイルは、`.cjs`とみなされる。（デフォルト） |