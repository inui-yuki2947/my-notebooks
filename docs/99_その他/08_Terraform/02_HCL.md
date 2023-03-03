# その他/Terraform/HCL

## 共通

### 概要

- Terraformでは、拡張子が`.tf`であるファイルを使用する。
- `.tf`ファイルでは、HCL（HashiCorp Configuration Language）と呼ばれる、HashiCorp社開発の独自記法を使用する。

### 書式

```text
resource "リソースの種類" "リソース名" {
    設定項目1  =  値1
    設定項目2  =  値2
    設定項目3  =  値3
}
```
