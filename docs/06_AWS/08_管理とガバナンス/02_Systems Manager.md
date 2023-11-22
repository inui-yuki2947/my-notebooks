# AWS/管理とガバナンス/Systems Manager

## aws ssm

### コマンド

| コマンド                                       | 概要                                                 |
| ---------------------------------------------- | ---------------------------------------------------- |
| `aws ssm get-parameter --name 名前`            | 指定した名前のパラメータの情報を取得する。           |
| `aws ssm put-parameter --name 名前 --value 値` | 指定した名前のパラメータに、指定した値をセットする。 |

### オプション

| コマンド        | オプション          | 概要                                                         |
| --------------- | ------------------- | ------------------------------------------------------------ |
| `get-parameter` | `--with-decryption` | パラメータがシークレット値である場合に、値を復号して返却する。<br />（デフォルトでは暗号化された値が返却される） |
| `get-parameter` | `--query 表現`      | 結果をJMESPathで加工する。                                   |
| `put-parameter` | `--type タイプ`     | タイプを指定する。<br />`String`, `StringList`, `SecureString`が指定可能。 |
| `put-parameter` | `--overwrite`       | 指定したパラメータが存在する場合に、上書きする。<br />（デフォルトではエラーになる） |

### 参考資料

- [Parameter Storeの使用 - AWS Systems Manager](https://docs.aws.amazon.com/ja_jp/systems-manager/latest/userguide/parameter-store-working-with.html)
