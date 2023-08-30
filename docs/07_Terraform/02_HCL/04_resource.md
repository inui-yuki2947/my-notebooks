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
