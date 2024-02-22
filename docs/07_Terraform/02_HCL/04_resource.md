# Terraform/HCL/resource

## resourceブロック

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

### 概要

- `resource`ブロックは、リソース（インフラのコンポーネント）の情報を記述する。
- 当ブロックで作成（紐付け）されたオブジェクトは、Stateファイルに記録される。
- **リソースの種類**は、各プロバイダーごとに規定されたリソースの種類である。
- **リソース名**は、当リソースの任意の識別子である。
- リソースの種類とリソース名は、モジュール内で一意である必要がある。

### 属性

| 属性                                              | 概要                                                         |
| ------------------------------------------------- | ------------------------------------------------------------ |
| `depends_on = [リソースの種類1.リソース名1, ...]` | Terraformが自動的に解決できない依存関係について、明示したい場合に使用する。 |
| `count = 複製したい数`                            | 同種のリソースを複製したい場合に使用する。                   |
| `for_each = マップまたは文字列のセット`           | 同種のリソースを複製したい場合に使用する。                   |

### 参照できる情報

| 書式                                                         | 使用できる場所                               | 概要                                                         |
| ------------------------------------------------------------ | -------------------------------------------- | ------------------------------------------------------------ |
| `リソースの種類.リソース`<br />`module.リソース名`           | 同じモジュール内                             | 指定したリソースの情報。<br />（+`.属性名`で、指定した属性のほか、リソースのIDなど、リモートAPIが提供する属性を参照できる） |
| `リソースの種類.リソース名[インデックスまたはキー]`<br />`module.リソース名[インデックスまたはキー]` | 同じモジュール内                             | 指定したリソースで`count`または`for_each`をしている場合、<br />指定したインデックスまたはキーのインスタンスの情報。 |
| `count.index`                                                | `count`属性を定義した`resource`ブロック内    | インスタンスのインデックス。（インデックスは0始まり）        |
| `each.key`                                                   | `for_each`属性を定義した`resource`ブロック内 | マップのキー。                                               |
| `each.value`                                                 | `for_each`属性を定義した`resource`ブロック内 | マップの値。<br />（`for_each`でセットを与えた場合は、`each.key`と同値） |

- [The count Meta-Argument - Configuration Language | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/language/meta-arguments/count)
- [The for_each Meta-Argument - Configuration Language | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/language/meta-arguments/for_each)

### 参考資料

- [Resources Overview - Configuration Language | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/language/resources)
