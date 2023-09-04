# Terraform/HCL/resource

## resourceブロック

### 概要

- `resource`ブロックは、リソース（インフラのコンポーネント）の情報を記述する。
- 当ブロックで作成（紐付け）されたオブジェクトは、Stateファイルに記録される。

### 書式

```text
resource "リソースの種類" "リソース名" {
  属性1  =  値1
  属性2  =  値2
  ...
}
```

### 例

```text
resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
```

### リソース名

- リソース名は、**同じモジュール内から**当リソースを参照する場合に用いられる。
- リソースの種類とリソース名は、合わせて識別子として使用されるので、モジュール内で一意である必要がある。

### リソースの属性の参照

- `リソースの種類.リソース名.属性`の形式で、同じモジュールのリソースの属性を参照できる。
- リソースで指定した属性のほか、リソースのIDなど、リモートAPIが提供する属性も参照可能である。

### 参考資料

- [Resources Overview - Configuration Language | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/language/resources)

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
