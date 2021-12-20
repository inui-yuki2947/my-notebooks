# Ruby on Rails

## 概要

- [Ruby on Rails ガイド：体系的に Rails を学ぼう](https://railsguides.jp/)
- [Ruby on Rails API](https://api.rubyonrails.org/)
- [Ruby on Rails チュートリアル：実例を使って Rails を学ぼう](https://railstutorial.jp/)

## インフラ

### DB

- 既存DBからスキーマをインポートする場合は、「rails db:schema:dump」。
  [Rails - schema.rb（既存DBを使ったアプリ作成） - Qiita](https://qiita.com/edo1z/items/a0bf22b294406f00ec7c)

### heroku

- [Heroku コマンド・設定 メモメモ - Qiita](https://qiita.com/pugiemonn/items/0e69b7a29a384b356e65)
- [Herokuの再起動、ストップ - Qiita](https://qiita.com/RyochanUedasan/items/d447cbf2733e389994bb)

## gem

### bundler

- [Bundlerを使ったGemパッケージの管理 - Ruby on Rails入門](https://www.javadrive.jp/rails/ini/index2.html)

### kaminari

- ページネーションに関するgem。
- [Kaminariの使い方 まとめ - 猫Rails](http://nekorails.hatenablog.com/entry/2018/10/15/005146)

### devise

- ユーザー管理に関するgem。
- [GitHub](https://github.com/heartcombo/devise)

### devise-i18n

- deviseをi18nするgem。
- 「devise-i18n-views」も一緒に使うよう書いてあることがあるが、現在は使わなくてよくなった模様。
- [GitHub](https://github.com/tigrish/devise-i18n)
- [deviseを日本語表記にする。 - Qiita](https://qiita.com/ryuuuuuuuuuu/items/48dec280cf8925968c65)

## コントローラー

### レスポンスの出し分け

- 「respond_to」を使うと、HTML以外にJSON、JS形式でレスポンス（動作）を指定できる。
  [【Rails】respond_toメソッドの使い方をマスターしてリクエ | Pikawaka - ピカ1わかりやすいプログラミング用語サイト](https://pikawaka.com/rails/respond_to)

### renderとredirect_to

- renderはビューファイルを指定、redirect_toはURLを指定。
  [【Rails】renderとredirect_toの違いと使い分け - Qiita](https://qiita.com/morikuma709/items/e9146465df2d8a094d78)

### その他

- コントローラーのメソッドをビューで使いたい場合は、「helper_method」を使う。
  [メモ][Rails]コントローラーのメソッドをヘルパーとしてビューで使う - Qiita

## ビュー

### フォーム

- 「form_tag」と「form_for」は Rails5.1でsoft deprecatedとなったため、「form_with」を使う。
  [【Rails 5】(新) form_with と (旧) form_tag, form_for の違い - Qiita](https://qiita.com/hmmrjn/items/24f3b8eade206ace17e2)
- ActiveModelを使えば対応するテーブルがなくてもform_forが使える。
  [検索条件フォームのようにテーブルと完全に同一でないフォームもform_forを使って実装できる - Qiita](https://qiita.com/ishidamakot/items/dc16b6e22e6ec275079f)

### flash

- 「flash」はリダイレクトする時、「flash.now」はrenderする時に用いる。
  [【Rails】flashメッセージを使用して簡易メッセージを表示させる詳しい方法と解説 - Qiita](https://qiita.com/dice9494/items/2a0e92aba58a516e42e9)

### Ajax

- フォームを「remote: true」として、JS用のテンプレートも用意すれば、比較的簡単にAjax化できる。
  [【Rails】remote: | Pikawaka - ピカ1わかりやすいプログラミング用語サイト](https://pikawaka.com/rails/remote-true)
- JSに処理を寄せたりするテクニックもある。
  [2019年にRails + Ajaxを整理してみる(サンプルアプリ＆コード付き) - Qiita](https://qiita.com/jonakp/items/39fecc0f31335328b34e)

### i18n

- [Ruby on RailsのI18nで使用する名前空間に関してのまとめと、ベストプラクティスの検討。 - 波打際のブログさん](http://alfa.hatenablog.jp/entry/2013/12/03/221308)

## RSpec

### RSpec

- GitHub
  [rspec/rspec-rails: RSpec for Rails 5+](https://github.com/rspec/rspec-rails)
- 基本的な使い方
  [使えるRSpec入門・その1「RSpecの基本的な構文や便利な機能を理解する」 - Qiita](https://qiita.com/jnchito/items/42193d066bd61c740612)
- マッチャについて
  [RSpec Expectations 3.1 - RSpec Expectations - RSpec - Relish](https://relishapp.com/rspec/rspec-expectations/v/3-1/docs)
  [使えるRSpec入門・その2「使用頻度の高いマッチャを使いこなす」 - Qiita](https://qiita.com/jnchito/items/2e79a1abe7cd8214caa5)
- letを用いると、遅延評価される変数を定義することができる。

### RSpec Rails

- ドキュメント
  [RSpec Rails 4.0 - RSpec Rails - RSpec - Relish](https://relishapp.com/rspec/rspec-rails/v/4-0/docs)
- 基本的な使い方
  [Ruby on Rails のテストフレームワーク RSpec 事始め - Qiita](https://qiita.com/tatsurou313/items/c923338d2e3c07dfd9ee)
- コントローラーのテストでは、「controller spec」ではなく、「request spec」を使用すること。
  [Rails5でコントローラのテストをController specからRequest specに移行する - Qiita](https://qiita.com/t2kojima/items/ad7a8ade9e7a99fb4384)
- minitestとの比較。よっぽど小規模でない限り、基本的にはRSpec採用でよさそう。
  [RSpecとMinitest、使うならどっち？ / #kanrk06 - Speaker Deck](https://speakerdeck.com/jnchito/number-kanrk06)

## Rubocop

- [RuboCop :: RuboCop Docs](https://docs.rubocop.org/rubocop/index.html)
- GitHub
  - [rubocop](https://github.com/rubocop-hq/rubocop)
  - [rubocop-performance](https://github.com/rubocop-hq/rubocop-performance)
  - [rubocop-rails](https://github.com/rubocop-hq/rubocop-rails)
  - [rubocop-rspec](https://github.com/rubocop-hq/rubocop-rspec)
- 「rubocop --auto-gen-config」と打つことで、「.rubocop_todo.yaml」ファイルが生成されて便利。

## その他

### _pathと_url

- `_path`は相対パス、`_url`は絶対パス。`_url`はリダイレクトに使う。
  [_pathと_urlの違いについて調べてみた - Qiita](https://qiita.com/bSRATulen2N90kL/items/a183c501f56c4068584c)

### その他

- 1つのファイルにはクラス1つのみ定義する。そうしなければ他ファイルからの参照ができない。
  [Ruby - 一つのファイルに複数のクラスを書くことの是非｜teratail](https://teratail.com/questions/111996)
- modelなどでサブディレクトリを作成する場合は以下のようにする。
  [namespaces - Rails 4: organize rails models in sub path without namespacing models? - Stack Overflow](https://stackoverflow.com/questions/18934115/rails-4-organize-rails-models-in-sub-path-without-namespacing-models)
- 単数形・複数形の変換などのまとめ。
  [ActiveSupportのString拡張(活用形)まとめ - Qiita](https://qiita.com/hana-da/items/ec9ac3e1c8803f5fa1fc)
- [Railsでいいね機能を実装しよう - Qiita](https://qiita.com/nojinoji/items/2c66499848d882c31ffa)
- [macのrailsサーバーにスマホ実機でアクセスする - Qiita](https://qiita.com/takahi5/items/8e03f12bec7def84fc52)
- <https://qiita.com/lasershow/items/1a048d03ddaaba98171e>
- <https://qiita.com/kodai_0122/items/56168eaec28eb7b1b93b>
- <https://qiita.com/azul915/items/5b7063cbc80192343fc0>
