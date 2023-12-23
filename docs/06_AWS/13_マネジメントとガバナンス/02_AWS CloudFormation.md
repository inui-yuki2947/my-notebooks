# AWS/マネジメントとガバナンス/AWS CloudFormation

## 共通

### 概要

- **AWS CloudFormation**は、AWSアカウントで利用された操作を、ログとして記録するサービスである。
- CloudFormationの設定ファイルを**テンプレート**、
  テンプレートに従ってプロビジョニングされるAWSリソースの集合を**スタック**と呼ぶ。
- **スタックポリシー**を設定すると、スタックのリソースが更新されないようにできる。
- Lambda関数をカスタムリソースに関連付けると、カスタムリソースが作成、更新、または削除されるたびに関数が呼び出される。
- [AWS CloudFormation の概要 - AWS CloudFormation](https://docs.aws.amazon.com/ja_jp/AWSCloudFormation/latest/UserGuide/Welcome.html)

### スタック

- **ドリフト検出**を使用すると、スタックの実際の構成が予想される構成と異なるかどうかを検出できる。
- **ネストされたスタック**は、他のスタックの一部として作成されたスタックである。

### StackSets

- **AWS CloudFormation StackSets**は、複数のアカウントおよび AWS リージョンのスタックを、1度のオペレーションで作成、更新、削除できるようにする。

### ヘルパースクリプト

- **ヘルパースクリプト**は、スタック内のEC2インスタンスの構築・変更等を容易にする機能である。

| 種類             | 概要                                                         |
| ---------------- | ------------------------------------------------------------ |
| cfn-init         | リソースメタデータの取得、パッケージのインストール、ファイルの作成、サービスの開始で使用する。 |
| cfn-signal       | CreationPolicyまたはWaitConditionでシグナルを送信するために使用する。 |
| cfn-get-metadata | 特定のキーへのリソースまたはパスのメタデータを取得するために使用する。 |
| cfn-hup          | メタデータへの更新を確認し、変更が検出されたときにカスタムフックを実行するために使用する。 |

### 例

```yml
AWSTemplateFormatVersion: 2010-09-09
Description: A sample template
Resources:
  MyEC2Instance:
    Type: 'AWS::EC2::Instance'
    Properties:
      ImageId: ami-0ff8a91507f77f867
      InstanceType: t2.micro
      KeyName: testkey
      BlockDeviceMappings:
        - DeviceName: /dev/sdm
          Ebs:
            VolumeType: io1
            Iops: 200
            DeleteOnTermination: false
            VolumeSize: 20
  MyEIP:
    Type: 'AWS::EC2::EIP'
    Properties:
      InstanceId: !Ref MyEC2Instance
```
