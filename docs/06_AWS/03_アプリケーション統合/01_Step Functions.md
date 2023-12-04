# AWS/アプリケーション統合/Step Functions

## 共通

- [AWS Step Functions とは? - AWS Step Functions](https://docs.aws.amazon.com/ja_jp/step-functions/latest/dg/welcome.html)

## Amazon ステートメント言語

### 概要

- [Amazon ステートメント言語 - AWS Step Functions](https://docs.aws.amazon.com/ja_jp/step-functions/latest/dg/concepts-amazon-states-language.html)

### 例

```json
{
  "Comment": "An example of the Amazon States Language using a choice state.",
  "StartAt": "FirstState",
  "States": {
    "FirstState": {
      "Type": "Task",
      "Resource": "arn:aws:lambda:us-east-1:123456789012:function:FUNCTION_NAME",
      "Next": "ChoiceState"
    },
    "ChoiceState": {
      "Type" : "Choice",
      "Choices": [
        {
          "Variable": "$.foo",
          "NumericEquals": 1,
          "Next": "FirstMatchState"
        },
        {
          "Variable": "$.foo",
          "NumericEquals": 2,
          "Next": "SecondMatchState"
        }
      ],
      "Default": "DefaultState"
    },

    "FirstMatchState": {
      "Type" : "Task",
      "Resource": "arn:aws:lambda:us-east-1:123456789012:function:OnFirstMatch",
      "Next": "NextState"
    },

    "SecondMatchState": {
      "Type" : "Task",
      "Resource": "arn:aws:lambda:us-east-1:123456789012:function:OnSecondMatch",
      "Next": "NextState"
    },

    "DefaultState": {
      "Type": "Fail",
      "Error": "DefaultStateError",
      "Cause": "No Matches!"
    },

    "NextState": {
      "Type": "Task",
      "Resource": "arn:aws:lambda:us-east-1:123456789012:function:FUNCTION_NAME",
      "End": true
    }
  }
}
```

### 状態のタイプ

| 状態のタイプ | 概要                                 |
| ------------ | ------------------------------------ |
| `Task`       | ステートマシンで何らかの作業をする。 |
| `Choice`     | 実行の選択肢間で選択する。           |
| `Fail`       | 失敗で実行を停止する。               |
| `Succeed`    | 成功で実行を停止する。               |

- [状態 - AWS Step Functions](https://docs.aws.amazon.com/ja_jp/step-functions/latest/dg/concepts-states.html)

### 組み込み関数

- 組み込み関数を使用するには、次のようにキーの末尾に`.$`を付与する必要がある。

  ```text
  "KeyId.$": "States.Array($.Id)"
  ```

- 組み込み関数には以下のものなどが存在する。
  - `States.Array`
  - `States.ArrayContains`
  - `States.Base64Encode`

### 項目

| 項目      | 必須 | 概要                        |
| --------- | ---- | --------------------------- |
| `Comment` | 任意 | ステートマシンの説明。      |
| `StartAt` | 必須 | 最初に開始するStateの名前。 |
| `States`  | 必須 | 一連の状態。                |

- [ステートマシン構造 - AWS Step Functions](https://docs.aws.amazon.com/ja_jp/step-functions/latest/dg/amazon-states-language-state-machine-structure.html)

### 項目（状態・共通）

| 分類   | 項目                    | 必須         | 概要                                                         |
| ------ | ----------------------- | ------------ | ------------------------------------------------------------ |
| 共通   | `States.XXX.Type`       | 必須         | この状態のタイプ。                                           |
| 共通   | `States.XXX.Next`       | 任意         | この状態の次の状態の名前。                                   |
| 共通   | `States.XXX.End`        | 任意         | この状態を終了状態とするか。                                 |
| 共通   | `States.XXX.Comment`    | 任意         | この状態の説明。                                             |
| 共通   | `States.XXX.InputPath`  | 任意         | 入力の一部を選択してこの状態に渡すパス。<br />（省略時は、入力全体を指定する値 `$`） |
| 共通   | `States.XXX.OutputPath` | 任意         | この状態の出力の一部を選択して次の状態に渡すパス。<br />（省略時は、出力全体を指定する値`$`） |
| Task   | `States.XXX.Resource`   | 必須         | 実行する特定のタスクを一意に識別するARN。                    |
| Task   | `States.XXX.Parameters` | 任意         | 接続されたリソースの APIアクションに情報を渡すパラメータ。   |
| Choice | `States.XXX.Choices`    | 必須         | ステートマシンが次に移行する状態を決定する選択ルールの配列。 |
| Choice | `States.XXX.Default`    | 任意（推奨） | Choicesのいずれの移行も実行されない場合の移行先の状態の名前。 |

- プロセスは、"Type": "Succeed"、"Type": "Fail"、または "End": true の状態に到達するまで繰り返される。
- [[Common State] (共通状態) フィールド - AWS Step Functions](https://docs.aws.amazon.com/ja_jp/step-functions/latest/dg/amazon-states-language-common-fields.html)

- [タスク - AWS Step Functions](https://docs.aws.amazon.com/ja_jp/step-functions/latest/dg/amazon-states-language-task-state.html)
- [選択 - AWS Step Functions](https://docs.aws.amazon.com/ja_jp/step-functions/latest/dg/amazon-states-language-choice-state.html)
