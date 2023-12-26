# AWS/コンピューティング/AWS Lambda

## 共通

### 概要

- **AWS Lambda**は、イベントドリブントリガーをもとにアクションや条件分岐を構築するFaaSサービスである。
- AWS Lambdaは、サーバーレスかつフルマネージドで、関数の実行中のみ課金される。
- AWS Lambdaの最大実行時間は、900秒＝15分である。
- Lambdaを記述する言語としては、PythonとNode.jsがよく使われる。
- [AWS Lambda の概要 - AWS Lambda](https://docs.aws.amazon.com/ja_jp/lambda/latest/dg/welcome.html)

### Lambdaレイヤー

- **Lambdaレイヤー**は、Lambda関数で使用できるライブラリ・依存関係をパッケージ化して、Lambda関数間で共有可能にする機能である。

### バージョニングとエイリアス

- **バージョニング**は、コードの更新時に新旧のバージョンを共存する機能である。
- **エイリアス**は、本番環境とは別の環境を作成する機能である。

### Lambda@Edge

- **Lambda@Edge**は、CloudFrontのエッジロケーション上でLambdaのプログラムを実行するサービスであり、通常のLambdaを上回るパフォーマンスと待ち時間の短縮を実現する。

### 関数ログ

- 関数ログは、 CloudWatch Logs グループ`/aws/lambda/<function name>`に出力される。

## 関数

### 例（node.js）

```js
export const handler = async (event, context) => {
  console.log("EVENT: \n" + JSON.stringify(event, null, 2));
  return context.logStreamName;
};
```

### 例（Python）

```python
def handler_name(event, context): 
    ...
    return some_value
```
