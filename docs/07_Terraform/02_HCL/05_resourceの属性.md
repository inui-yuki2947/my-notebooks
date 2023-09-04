# Terraform/HCL/resourceの属性

## resourceの属性

### 共通

| 書式                                              | 概要                                                         |
| ------------------------------------------------- | ------------------------------------------------------------ |
| `depends_on = [リソースの種類1.リソース名1, ...]` | Terraformが自動的に解決できない依存関係について、明示したい場合に使用する。 |
| `count = 複製したい数`                            | 同種のリソースを複製したい場合に使用する。                   |
| `for_each = マップまたは文字列のセット`           | 同種のリソースを複製したい場合に使用する。                   |

### countオブジェクト

- `count`ブロックを定義したリソース内では、`count`オブジェクトが参照可能となる。

  | 書式          | 概要                                                        |
  | ------------- | ----------------------------------------------------------- |
  | `count.index` | インスタンスのインデックス。<br />（インデックスは0始まり） |

- [The count Meta-Argument - Configuration Language | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/language/meta-arguments/count)

### eachオブジェクト

- `for_each`ブロックを定義したリソース内では、`each`オブジェクトが参照可能となる。

  | 書式         | 概要                                                         |
  | ------------ | ------------------------------------------------------------ |
  | `each.key`   | マップのキーを参照する。                                     |
  | `each.value` | マップの値を参照する。<br />（`for_each`でセットを与えた場合は、`each.key`と同値） |

- [The for_each Meta-Argument - Configuration Language | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/language/meta-arguments/for_each)

### インスタンスの参照

- `count`, `for_each`ブロックを定義したリソース内では、下記のようにして、リソースブロックまたは個別のインスタンスを参照できる。

  | 書式                                                         | 概要                           |
  | ------------------------------------------------------------ | ------------------------------ |
  | `リソースの種類.リソース名`<br />`module.リソース名`         | リソースブロックを参照する。   |
  | `リソースの種類.リソース名[インデックスまたはキー]`<br />`module.リソース名[インデックスまたはキー]` | 個別のインスタンスを参照する。 |
