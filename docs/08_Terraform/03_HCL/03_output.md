# Terraform/HCL/output

## outputブロック

### 概要

- `output`ブロックは、`terraform apply`または`terraform output`の際に出力したい値を記述する。

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

## 参考資料

- [Query Data with Outputs | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-outputs)
