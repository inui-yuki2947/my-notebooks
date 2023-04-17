# Terraform/HCL/locals

## localsブロック

### 概要

- `locals`ブロックは、モジュール内で同じ値を再利用したい場合に使用する。

### 書式

```text
locals {
  ローカル変数名1 = 値1
  ローカル変数名2 = 値2
  ...
}
```

### 例

```text
locals {
  service_name = "forum"
  owner        = "Community Team"
}
```

### 参照

| 記法                   | 概要                         |
| ---------------------- | ---------------------------- |
| `local.ローカル変数名` | ローカル変数の値を参照する。 |

## 参考資料

- [Local Values - Configuration Language | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/language/values/locals)
