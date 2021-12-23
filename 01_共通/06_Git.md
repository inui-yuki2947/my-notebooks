# Git

## 共通

### ドキュメント

- [Git - Book](https://git-scm.com/book/ja/v2)

### 作業スペース

- ワークツリー（ワーキングツリー）
  - 今作業している場所
  - 変更分は**赤色**で表示
- インデックス
  - リポジトリにコミットするファイルがある場所
  - 変更分は**緑色**で表示
- リポジトリ
  - Gitで履歴が管理された場所

### ブランチ

- [GitのHEADとは何者なのか - Qiita](https://qiita.com/ymzk-jp/items/00ff664da60c37458aaa)
- Gitにおけるブランチは、単にコミットを指す軽量なポインタに過ぎない。
- ブランチ・タグ名は、コミットIDのエイリアスである。
- 「detached HEAD」とは、HEADがブランチを指していない状態のことである。

### チルダとキャレット

- [【やっとわかった！】gitのHEAD^とHEAD~の違い - Qiita](https://qiita.com/chihiro/items/d551c14cb9764454e0b9)
- `~n`は、親1つ目をn世代遡ったものを表す。
  - `HEAD~`：親1つ目
  - `HEAD~~`：親1つ目の親1つ目
  - `HEAD~2`：親1つ目の親1つ目
- `^n`は、複数親がいる場合に、n番目の親を表す。（マージコミットを遡りたい場合などに使う）
  - `HEAD^`：親1つ目
  - `HEAD^^`：親1つ目の親1つ目
  - `HEAD^2`：親2つ目
  - `HEAD^2^`：親2つ目の親1つ目

### ドット表記

- [git diff と git log におけるドット表記](https://zenn.dev/yoichi/articles/git-dotted-notations)

### AuthorとCommiter

- Authorは、オリジナルのコードを書いた人。
- Committerは、コミットをした人。

### CLI

- 引数でコミットを取る場合、省略すると原則`HEAD`となる。

## リポジトリ操作

### remote

- `remote`コマンドは、リモートリポジトリの名前を表示する。

  ```bash
  git remote
  ```

- `-v`オプションで、fetchとpullそれぞれについて、URLも合わせて表示する。

### remote add

- `remote add`コマンドは、リモートリポジトリを追加する。

  ```bash
  git remote add リポジトリ リポジトリURL
  ```

### remote remove

- `remote remove`コマンドは、リモートリポジトリを削除する。

  ```bash
  git remote remove リポジトリ
  ```

### remote prune

- `remote prune`コマンドは、消え残っているリモートブランチを削除する。

  ```bash
  git remote prune リポジトリ
  ```

### clone

- `clone`コマンドは、リモートリポジトリをローカルリポジトリに複製する。

  ```bash
  git clone リポジトリURL
  ```

### fork

- `fork`コマンドは、リモートリポジトリを自分のアカウントの**リモートリポジトリ**にコピーする。

## コミット操作

### log

- `log`コマンドは、コミット履歴を表示する。

  ```bash
  git log
  ```

- `--reverse`オプションで、ログを古い順に表示する。

- `--oneline`オプションで、ログを一行で表示させる。

- `--date=format:"フォーマット"`オプションで、日時のフォーマットを指定できる。

  - 例：`--date=format:"%Y/%m/%d %H:%M:%S"`

- `--pretty=format:"フォーマット"`オプションで、項目のフォーマットを指定できる。
  [git logのフォーマットを指定する - Qiita](https://qiita.com/harukasan/items/9149542584385e8dea75)

  - `%h`：コミットID（短縮形）
  - `%x09`：タブ文字

### show

- `show`コマンドは、コミット詳細を表示する。

  ```bash
  git show [コミット]
  ```

### add

- `add`コマンドは、指定したファイルをインデックスに追加（ステージ）する。

  ```bash
  git add ファイル
  ```

### rm

- `rm`コマンドは、ワークツリー・インデックスから、ファイルを削除する。

  ```bash
  git rm ファイル
  ```

- `--cached`オプションで、インデックスからのみ、ファイルを削除できる。

### commit

- `commit`コマンドは、インデックスにあるものをコミットする。

  ```bash
  git commit [ファイル名...]
  ```

- `-m メッセージ`オプションで、コミットメッセージを指定できる。

- `-a`オプションで、管理対象ファイルが全て`add`されコミットされる。
  （管理対象外ファイルは、先に`add`を行っておく必要がある）

- `-m, --message メッセージ`オプションで、メッセージを指定できる。

- `--no-edit`オプションで、メッセージの編集を省略できる。

### revert

- `revert`コマンドは、コミットを打ち消す。

  ```bash
  git revert 打ち消したいコミット
  ```

- `--mainline, -m <parent-number>`オプションで、マージコミットを打ち消すことができる。
  - `<parent-number>`は、`1`がマージされた側のブランチ、`2`がマージする側のブランチ。（なので基本的には`1`を指定する）
  - [GitでMerge CommitをRevertする方法 - Qiita](https://qiita.com/awakia/items/5fad0c454ddc7b478ff1)

## サブモジュール

### submodule

- `submodule`コマンドは、サブモジュール一覧を表示する。

### submodule update

- `sudmodule update`コマンドは、サブモジュールを親で指定したコミットに更新する。

## その他操作

### diff

- `diff`コマンドは、ファイルの差分を確認できる。

  ```bash
  git diff コミット1..コミット2
  ```

- `--name-only`オプションで、ファイル名のみ表示する。

- `--exit-code`オプションで、差分があれば`1`、なければ`0`で終了ステータスを返す。

- `--quiet`オプションで、`--exit-code`オプションを、標準出力をしない形で適用する。

### clean

- `clean`コマンドは、管理対象外のファイルを削除する。

  ```bash
  git clean [パス（省略時はカレントディレクトリ）]
  ```

- `-f, --force`オプションで、削除を確定できる。
- `-n, --dry-run`オプションで、ドライランできる。
- `-d`オプションで、ディレクトリも含めて削除する。
