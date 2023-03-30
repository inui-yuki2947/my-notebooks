# Terraform/HCL/resource

## resourceブロック

### 概要

- `resource`ブロックは、リソース（インフラのコンポーネント）の情報を記述する。

### 書式

```text
resource "リソースの種類" "リソース名" {
  設定項目1  =  値1
  設定項目2  =  値2
  ...
}
```
