# Terraform/HCL/data

## dataブロック

### 概要

- `resource`ブロックは、Terraform外で定義された情報や、他の分離されたTerraform設定を使用する場合などに使用する。

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

### データ名

- データ名は、**同じモジュール内から**当データを参照する場合に用いられる。
- データの種類とデータ名は、合わせて識別子として使用されるので、モジュール内で一意である必要がある。

### データの属性の参照

- `data.データの種類.データ名.属性`の形式で、同じモジュールのデータの属性を参照できる。

### 参考資料

- [Data Sources - Configuration Language | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/language/data-sources)
