# その他/Postman/Newman

## 共通

### 参考資料

- [postmanlabs/newman: Newman is a command-line collection runner for Postman](https://github.com/postmanlabs/newman)

## インストール

### 共通

```bash
npm install -g newman
```

## newman

### コマンド

| コマンド                          | 概要                                     |
| --------------------------------- | ---------------------------------------- |
| `newman -v, --version`            | newmanのバージョンを表示する。           |
| `newman [コマンド] -h, --help`    | newmanのコマンドのヘルプを表示する。     |
| `newman run コレクションファイル` | 指定したコレクションファイルを実行する。 |

### オプション

| コマンド                             | 概要                         |
| ------------------------------------ | ---------------------------- |
| `-e, --environment 環境変数ファイル` | 環境変数ファイルを指定する。 |
| `-x, --suppress-exit-code`           | 終了ステータスを`0`で返す。  |
| `--verbose`                          | 詳細を出力する。             |
