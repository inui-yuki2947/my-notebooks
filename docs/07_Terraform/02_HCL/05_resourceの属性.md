# Terraform/HCL/resourceの属性

## depends_on属性

### 概要

- `resource`ブロックの`depends_on`属性は、Terraformが自動的に解決できない依存関係について、明示したい場合に使用する。

### 書式

```text
depends_on = [リソースの種類1.リソース名1, ...]
```

### 参考資料

- [The depends_on Meta-Argument - Configuration Language | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/language/meta-arguments/depends_on)

## count属性

### 概要

- `resource`ブロックの`count`属性は、同種のリソースを複製したい場合に使用する。

### 書式

```text
count = 複製したい数
```

### countオブジェクト

- `count`ブロックを定義したリソース内では、`count`オブジェクトが参照可能となる。

| 書式          | 概要                                                        |
| ------------- | ----------------------------------------------------------- |
| `count.index` | インスタンスのインデックス。<br />（インデックスは0始まり） |

### インスタンスの参照

| 書式                                                         | 概要                           |
| ------------------------------------------------------------ | ------------------------------ |
| `リソースの種類.リソース名`<br />`module.リソース名`         | リソースブロックを参照する。   |
| `リソースの種類.リソース名[インデックス]`<br />`module.リソース名[インデックス]` | 個別のインスタンスを参照する。 |

### 参考資料

- [The count Meta-Argument - Configuration Language | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/language/meta-arguments/count)

## for_each属性

### 概要

- `resource`ブロックの`for_each`属性は、同種のリソースを複製したい場合に使用する。

### 書式

```text
for_each = マップまたは文字列のセット
```

### eachオブジェクト

- `for_each`ブロックを定義したリソース内では、`each`オブジェクトが参照可能となる。

| 書式         | 概要                                                         |
| ------------ | ------------------------------------------------------------ |
| `each.key`   | マップのキーを参照する。                                     |
| `each.value` | マップの値を参照する。<br />（`for_each`でセットを与えた場合は、`each.key`と同値） |

### インスタンスの参照

| 書式                                                         | 概要                           |
| ------------------------------------------------------------ | ------------------------------ |
| `リソースの種類.リソース名`<br />`module.リソース名`         | リソースブロックを参照する。   |
| `リソースの種類.リソース名[キー]`<br />`module.リソース名[キー]` | 個別のインスタンスを参照する。 |

### 参考資料

- [The for_each Meta-Argument - Configuration Language | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/language/meta-arguments/for_each)
