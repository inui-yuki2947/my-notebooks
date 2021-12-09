# Ruby
- `&:method_name`で、ブロックの代わりにメソッド名を渡すことができる。
  [Ruby初心者を脱した人が悩みがちな、ちょっと特殊な記法・演算子・イディオム - Qiita](https://qiita.com/nashirox/items/0c885edf7d78fd5a83f1)
- ヌル判定
	- `nil?`はnilかどうかの判定
	- `empty?`は配列や文字列の中身が存在しているかの判定
	- [Rubyでnil判定をする方法 | UX MILK](https://uxmilk.jp/22595)
- 指定回数のループ
  ```ruby
  (1..5).each {|n| 処理}
  ```
- ファイルの書き込み
  ```ruby
  File.open("sample1.txt", "w") {|f| f.puts 内容}
  ```

