# Others/ブラウザ/Selenium

## 共通

### 待機

- ページ遷移した後などで、要素が取得できるまで待ちたい場合は、以下のようにする。
  ただしリダイレクトが行われた場合は、要素取得が中断されるので注意。

  ```ruby
  driver = Selenium::WebDriver.for :firefox
  driver.manage.timeouts.implicit_wait = 10
  driver.find_element(...)
  ```
