# Windows

## 共通

### ユーザーフォルダ名

- ユーザーフォルダ名は、**スペースを含まない半角英数字**のみにするのが望ましい。そうしなければ、ディレクトリ・ファイルパスの扱いが甘いアプリケーションでエラーが出ることがある。
- ユーザーフォルダ名を変更したい場合は以下のような手順で行う。（結構めんどくさいので覚悟が必要）<br>
  [Windows10のユーザーフォルダ名変更 - Qiita](https://qiita.com/aaaKUKIaaa/items/83d6234b69b0d958d3f1)

### Windowsサービス

- Windowsサービスとは、Microsoft Windowsオペレーティングシステム (OS) で長時間動作し、ユーザーとのやりとり無しで特定機能を実行するものである。（UNIXでのデーモン）

### その他

- 絵文字の入力は、`Windows + .`
- x86は32ビット、x64は64ビット。

## cmd

- Windowキー、「cmd」、エンターと打つと、速攻でコマンドプロンプトが起動できる。<br>
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
