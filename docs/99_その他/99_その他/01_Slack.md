# その他/その他/Slack

## 絵文字

- [絵文字ジェネレーター - Slack 向け絵文字を無料で簡単生成](https://emoji-gen.ninja/)
- [Slack Emoji Generator - Slack絵文字ジェネレーター](https://slackemojigen.com/)

## GitHub連携

- [integrations/slack: Bring your code to the conversations you care about with the GitHub and Slack integration](https://github.com/integrations/slack)

- 連携リポジトリの追加

  ```text
  /github subscribe 所有者/リポジトリ名 [項目]
  ```

- 連携リポジトリの削除

  ```text
  /github unsubscribe 所有者/リポジトリ名 [項目]
  ```

- 連携リポジトリの確認

  ```text
  /github subscribe list features
  ```

## ワークフロービルダー

### 起動

- 左上のワークスペース名→「ツール」→「ワークフロービルダー」から、ワークフロービルダーの作成・編集画面が開ける。

### メッセージ・フォームの送信先

| メッセージ・フォームの送信先     | 概要                                                         |
| -------------------------------- | ------------------------------------------------------------ |
| 〇〇をクリックしたユーザー       | 当該ユーザーのSlackbotに送信される。                         |
| ワークフローを開始したチャンネル | 当該チャンネルに送信される。                                 |
| スレッドにメッセージを投稿する。 | 当該メッセージのスレッドに送信される。<br />それ以前のメッセージまたはフォームのステップの数だけ表示される。<br />（同じスレッドであればどれを選んでも同じ） |

### 参考資料

- [ワークフロービルダーを使ったタスクの自動化 | Slack](https://slack.com/intl/ja-jp/features/workflow-automation)
- [ツールの連携とタスクの自動化 | Slack](https://slack.com/intl/ja-jp/help/categories/360000047926#u12527u12540u12463u12501u12525u12540u12499u12523u12480u12540u12391u12479u12473u12463u12434u33258u21205u21270)
