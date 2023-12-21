# AWS/マネジメントとガバナンス/AWS Organizations

## 共通

### 概要

- **AWS Organizations**は、複数のAWSアカウント作成の自動化やグループ化による集中管理などを行うサービスである。
- Organizationsに参加するには、管理アカウントの所有者が、追加したいアカウントにリクエストを招待する。
- [AWS Organizations の概要 - AWS Organizations](https://docs.aws.amazon.com/ja_jp/organizations/latest/userguide/orgs_introduction.html)

### 組織単位

- **組織単位（OU）** を使用すると、アカウントをまとめてグループ化し、単一の単位として管理できる。

### サービスコントロールポリシー（SCP）

- **サービスコントロールポリシー（SCP）**は、Organizationsで管理されている複数のAWSアカウントに対して、IAMポリシーのような権限制御を統合的に管理・適用する機能である。
- SCPは、アカウントが組織のアクセスコントロールガイドラインに従っていることを確認するのに役立つ。
