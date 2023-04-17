# Terraform/HCL/variable

## variableブロック

### 概要

- `variable`ブロックは、定義する変数を記述する。

### 書式

```text
variable "変数名" {
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

| 書式         | 概要                 |
| ------------ | -------------------- |
| `var.変数名` | 変数の値を参照する。 |

## 参考資料

- [Define Input Variables | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-variables)
