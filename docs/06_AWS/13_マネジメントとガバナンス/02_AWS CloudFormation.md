# AWS/マネジメントとガバナンス/AWS CloudFormation

## 共通

### 概要

- **AWS CloudFormation**は、AWSアカウントで利用された操作を、ログとして記録するサービスである。
- CloudFormationの設定ファイルを**テンプレート**、
  テンプレートに従ってプロビジョニングされるAWSリソースの集合を**スタック**と呼ぶ。
- [AWS CloudFormation の概要 - AWS CloudFormation](https://docs.aws.amazon.com/ja_jp/AWSCloudFormation/latest/UserGuide/Welcome.html)

### StackSets

- **AWS CloudFormation StackSets**は、複数のアカウントおよび AWS リージョンのスタックを、1度のオペレーションで作成、更新、削除できるようにする。
