# Terraform/HCL/variable

## variableブロック

### 概要

- `variable`ブロックは、入力として指定可能な変数を記述する。

### 書式

```text
variable "入力変数名" {
  description = "説明"
  type        = 型
  default     = デフォルト値
}
```

### 例

```text
variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
}
```

## 参照

### 書式

| 書式             | 概要                     |
| ---------------- | ------------------------ |
| `var.入力変数名` | 入力変数の値を参照する。 |

## 割り当て

- ルートモジュールで変数を定義した場合は、CLIのオプション、`.tfvars`ファイル、または環境変数で指定が可能となる。
- 子モジュールで変数を定義した場合は、`module`ブロックで変数の受け渡しが必要となる。

## 参考資料

- [Input Variables - Configuration Language | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/language/values/variables)
- [Define Input Variables | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-variables)
