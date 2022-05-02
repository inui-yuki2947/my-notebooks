# 開発/Postman/Newman

## 共通

### インストール

```bash
npm install -g newman
```

### 参考資料

- [postmanlabs/newman: Newman is a command-line collection runner for Postman](https://github.com/postmanlabs/newman)

## newman

### コマンド

| コマンド              | 概要                         |
| --------------------- | ---------------------------- |
| `newman サブコマンド` | newmanの各種操作を実行する。 |

## newman run

### コマンド

| コマンド                          | 概要                                     |
| --------------------------------- | ---------------------------------------- |
| `newman run コレクションファイル` | 指定したコレクションファイルを実行する。 |

### オプション

| コマンド                             | 概要                         |
| ------------------------------------ | ---------------------------- |
| `-e, --environment 環境変数ファイル` | 環境変数ファイルを指定する。 |
