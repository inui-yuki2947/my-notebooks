# その他/Selenium/Web要素

## Web要素の検索

### 書式

| 書式                                                         | 概要                                                        |
| ------------------------------------------------------------ | ----------------------------------------------------------- |
| `driver.find_element(引数1, ...)`<br />`DOM要素.find_element(引数1, ...)` | 指定したコンテキストの中で、最初に見つかったDOM要素を返す。 |
| `driver.find_elements(引数1, ...)`<br />`DOM要素.find_elements(引数1, ...)` | 指定したコンテキストの中で、見つかったDOM要素の配列を返す。 |

- iframe内の要素は取得できない。

## iframe

### 書式

| 書式                                                         | 概要                           |
| ------------------------------------------------------------ | ------------------------------ |
| `driver.switch_to.frame(iframeDOM要素)`<br />`driver.switch_to.frame(iframeのnameまたはid)` | 指定したiframeに切り替える。   |
| `driver.switch_to.default_content`                           | もとのコンテンツに切り替える。 |

## Web要素の情報

### 書式

| 書式           | 概要                              |
| -------------- | --------------------------------- |
| `DOM要素.text` | 指定したDOM要素のテキストを返す。 |
