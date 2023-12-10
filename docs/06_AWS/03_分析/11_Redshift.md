# AWS/分析/Redshift

## 共通

### 概要

- **Amazon Redshift**は、高速でフルマネージド型、ペタバイト規模のデータウェアハウスサービスである。
- BI（Business Intelligence）ツールなどを利用した大量データの収集・分析に向いている。
- **クロスアカウントデータ共有**を利用すると、Redshiftのデータを異なるAWSアカウント間で共有できる。
- **Redshift Spectrum**は、ストレージコストの増加を抑えながらデータをクエリする。
- [Amazon Redshift Serverless - Amazon Redshift](https://docs.aws.amazon.com/ja_jp/redshift/latest/gsg/new-user-serverless.html)

### ノード・クラスター

- Redshiftは、**「ノード」**と呼ばれるコンピューティングリソースの集まりで構成されている。
- Redshiftに対して処理をする場合は、**「リーダーノード」**と呼ばれるノードが処理を受ける。
- リーダーノードは、**「コンピュータノード」**と呼ばれるノードに処理を依頼する。
- ノードの集まりのことを**「クラスター」**という。
