# AWS/コンピューティング/AWS Lambda

## 共通

### 概要

- **「AWS Lambda」**は、データやリクエストのリアルタイム処理やバックエンドの処理を、自動実行するしくみ。
- **「Lambda@Edge」**は、CloudFrontのエッジロケーション上でLambdaのプログラムを実行するサービスであり、通常のLambdaを上回るパフォーマンスと待ち時間の短縮を実現する。
- Lambdaを記述する言語としては、PythonとNode.jsがよく使われる。
- [AWS Lambda の概要 - AWS Lambda](https://docs.aws.amazon.com/ja_jp/lambda/latest/dg/welcome.html)

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

## 監視機能

### 関数ログ

- 関数ログは、 CloudWatch Logs グループ`/aws/lambda/<function name>`に出力される。
