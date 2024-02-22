# Terraform/HCL/terraform

## terraformブロック

### 概要

- `terraform`ブロックは、必要なプロバイダ、及びそのバージョンの情報を記述する。
- 当ブロック内では、定数のみ使用可能である。
- `backend`ブロックを定義すると、`local`、`remote`、`s3`などのうち、どの手段でStateファイルを管理すべきか設定できる。（デフォルトは`local`）

### 書式

```text
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}
```

### 参考資料

- [Terraform Settings - Configuration Language | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/language/settings)
