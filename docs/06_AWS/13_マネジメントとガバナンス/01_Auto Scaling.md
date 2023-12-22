# AWS/マネジメントとガバナンス/Auto Scaling

## 共通

### 概要

- **Auto Scaling**は、需要に合わせて複数のリソースをスケーリングするサービスである。

### 種類

| 種類                         | 概要                                                         |
| ---------------------------- | ------------------------------------------------------------ |
| **AWS Auto Scaling**         | 複数のサービスにまたがる複数のリソースをスケーリングする。<br />[スケーリングプランとは？ - AWS Auto Scaling](https://docs.aws.amazon.com/ja_jp/autoscaling/plans/userguide/what-is-a-scaling-plan.html) |
| **Amazon EC2 Auto Scaling**  | EC2インスタンスをスケーリングする。<br />[Amazon EC2 Auto Scaling とは - Amazon EC2 Auto Scaling](https://docs.aws.amazon.com/ja_jp/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html) |
| **Application Auto Scaling** | EC2以外の個々のAWSのサービスをスケーリングする。<br />[Application Auto Scaling とは - Application Auto Scaling](https://docs.aws.amazon.com/ja_jp/autoscaling/application/userguide/what-is-application-auto-scaling.html) |

### 設定

- EC2 Auto Salingを実行するには、スケーリングプラン、起動設定、Auto Scalingグループの3つを設定する。
- **スケーリングプラン**は、いつどのような条件でAuto Scalingを実行するかを定義する。
- **起動設定**は、Auto Scalingの実行時に起動するEC2インスタンスの情報を定義する。
- **Auto Scalingグループ**は、EC2インスタンスの管理を行う範囲を指す。

### ポリシータイプ

| 種類                               | 概要                                                         |
| ---------------------------------- | ------------------------------------------------------------ |
| シンプルスケーリング               | 1つのスケーリングポリシーに基づいて実行。                    |
| ステップスケーリング               | Amazon CloudWatchアラームの設定に応じた一連のスケーリングポリシーに基づいて実行。<br />（シンプルスケーリングの上位互換） |
| ターゲットトラッキングスケーリング | 特定のメトリクスのターゲット値を維持するように実行           |
| 予測スケーリング                   | 機械学習を用いて、過去のAmazon CloudWatch履歴データから予測データを作成し、その予測に基づいて実行。 |

### その他

- **ウォームアップ**、**クールダウン**は、Auto Scalingが連続で実行されないように、Auto Scalingの待ち時間を設定する機能である。
- **ライフサイクルフック**では、Auto ScalingによるEC2インスタンスの起動または終了を一時的に待機させて、指定したアクションを実行することができる。
