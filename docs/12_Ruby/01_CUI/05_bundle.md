# Ruby/CUI/bundle

## 共通

### 概要

- Bundlerは、Gemfileというファイルを用いて、ジェム同士の互換性を保ちつつ、複数のジェムを管理するツール。

### 参考資料

- [Bundler: The best way to manage a Ruby application's gems](https://bundler.io/)

## インストール

### 共通

```bash
gem install bundler
```

## bundle

### コマンド

| コマンド                     | 概要                                                         |
| ---------------------------- | ------------------------------------------------------------ |
| `bundle -v, --version`       | Bundlerのバージョンを表示する。                              |
| `bundle help`                | Bundlerのヘルプを表示する。                                  |
| `bundle init`                | カレントディレクトリで、Gemfileを作成する。                  |
| `bundle install`             | `./Gemfile`に記述されたジェムを、全てインストールする。      |
| `bundle update`              | `./Gemfile`に記述されたジェムを、全て更新する。              |
| `bundle update ジェム名 ...` | `./Gemfile`に記述されたジェムのうち、指定したものを全て更新する。 |
| `bundle list`                | インストールされたジェムの一覧を表示する。                   |

- `bundle`は、`bundler`とも記述可能？

## Gemfile

### ファイル

| ファイル       | 概要                                                         |
| -------------- | ------------------------------------------------------------ |
| `Gemfile`      | インストールしたいジェムについて記述するファイル。<br />Rubyの文法で記述する。 |
| `Gemfile.lock` | インストールされたジェムについて記述されたファイル。         |

### 書式

| 書式              | 概要                                                         |
| ----------------- | ------------------------------------------------------------ |
| `source URL`      | ジェムのソースを指定する。<br />Gemfileで1つのみ指定するのが推奨。 |
| `ruby バージョン` | 指定したバージョンのRubyを使用する。<br />（**バージョンが異なるとエラーを出す**） |
| `gem ジェム名`    | 指定したジェムをインストールする。                           |

### 例

```ruby
source 'https://rubygems.org'
ruby "~> 2.3.0"
gem 'nokogiri'
gem 'rack', '~> 2.0.1'
gem 'rspec'
```
