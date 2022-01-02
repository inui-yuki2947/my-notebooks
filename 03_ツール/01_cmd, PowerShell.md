# cmd, PowerShell

## cmd

- Windowキー、「cmd」、エンターと打つと、速攻でコマンドプロンプトが起動できる。
  [【Windows10】1秒でコマンドプロンプトを起動する方法【ショートカットキー】 | Tipstour](https://tipstour.net/windows10-command-prompt-shortcut)

## PowerShell

- エスケープ文字には、バッククォートを使う。
- [PowerShellでファイル名一括置換 - Qiita](https://qiita.com/hyakuson/items/9e8e239d4ba45b595486)

## 環境変数

- 「set」コマンドで、環境変数が確認できる。
- そのプロセス内でのみ有効な環境変数を設定する。

  ```powershell
  set [変数名]=[設定文字列]
  ```

- そのプロセス内が終了しても有効な環境変数を設定する。

  ```powershell
  setx [変数名] [設定文字列]
  ```

- [Windows10でTempやPathなどの環境変数を設定する方法 | サービス | プロエンジニア](https://proengineer.internous.co.jp/content/columnfeature/5205)
