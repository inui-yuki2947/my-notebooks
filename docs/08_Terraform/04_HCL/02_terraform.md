# Terraform/HCL/terraform

## terraformブロック

### 概要

- `terraform`ブロックは、必要なプロバイダ、及びそのバージョンの情報を記述する。

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
