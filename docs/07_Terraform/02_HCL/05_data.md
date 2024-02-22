# Terraform/HCL/data

## dataブロック

### 書式

```text
data "データの種類" "データ名" {
  属性1  =  値1
  属性2  =  値2
  ...
}
```

### 例

```text
data "aws_ami" "example" {
  most_recent = true

  owners = ["self"]
  tags = {
    Name   = "app-server"
    Tested = "true"
  }
}
```

### 概要

- `resource`ブロックは、Terraform外で定義された情報や、他の分離されたTerraform設定を使用する場合などに使用する。

- **データの種類**は、各プロバイダーごとに規定されたデータの種類である。
- **データ名**は、データの識別子である。
- データの種類とデータ名は、モジュール内で一意である必要がある。

### 参照できる情報

| 書式                         | 使用できる場所   | 概要                                                         |
| ---------------------------- | ---------------- | ------------------------------------------------------------ |
| `data.データの種類.データ名` | 同じモジュール内 | 指定したデータの情報。<br />（+`.属性名`で、指定した属性を参照できる） |

### 参考資料

- [Data Sources - Configuration Language | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/language/data-sources)
