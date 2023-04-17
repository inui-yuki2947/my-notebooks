# Terraform/HCL/output

## outputブロック

### 概要

- `output`ブロックは、下記のような用途で使用する。
  - 子モジュールが親モジュールに対して、リソースの属性を公開したい場合。
  - `terraform apply`または`terraform output`の際に、値を出力したい場合。

### 書式

```text
output "出力変数名" {
  description = "説明"
  value       = 値
}
```

### 例

```text
output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}
```

### 参照

| 記法                             | 概要                     |
| -------------------------------- | ------------------------ |
| `module.モジュール名.出力変数名` | 出力変数の値を参照する。 |

## 参考資料

- [Output Values - Configuration Language | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/language/values/outputs)
- [Query Data with Outputs | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-outputs)
