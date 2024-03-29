# AWS/クラウドの財務管理/AWS Billing and Cost Management

## AWS Cost and Usage Report

### 概要

- **AWS Cost and Usage Report**（コストと使用状況レポート）では、AWSのサービスごとのリソース使用状況とコストを、時間単位や日次単位で収集し、CSV形式でS3に保存またはRedshiftに格納したり、QuickSightで分析・可視化できる。
- [AWS コストと使用状況レポートとは - AWS コストと使用状況レポート](https://docs.aws.amazon.com/ja_jp/cur/latest/userguide/what-is-cur.html)

## AWS Cost Explorer

### 概要

- **AWS Cost Explorer**は、AWS Cost and Usage Reportのデータをグラフィカルに可視化したり検索できるサービスである。
- 日付範囲に未来の日付を含めることで、コスト予測を作成することができる。
- Saving Plansは、Cost Explorerから購入する。
- [AWS Cost Explorer を用いてコストを分析する - AWS コスト管理](https://docs.aws.amazon.com/ja_jp/cost-management/latest/userguide/ce-what-is.html)

## AWS Budgets

### 概要

- **AWS Budgets**では、予算を作成できる。
- AWS Budgetでは、コストまたは使用量が予算額を超えた（または超えると予測された）場合に警告するカスタム予算を設定できる。
- [AWS Budgets を用いてコストを管理する - AWS コスト管理](https://docs.aws.amazon.com/ja_jp/cost-management/latest/userguide/budgets-managing-costs.html)
