# テキスト/XML/XSL

## 共通

### 概要

- **Extensible Stylesheet Language（XSL）**は、XML文書から組版などの変換を行うためのシステムである。
- XSLは下記の3つから構成されている。
  - **XSL Transformations（XSLT）**：XML文書を構造の異なるXML文書などに変換するための変換言語
  - **XML Path Language（XPath）**：XML文書の特定の部分（要素、属性、テキストなど）を指定する表現法
  - **XSL Formatting Objects（XSL-FO）**：文書の組版（人間に理解しやすい形式）を記述する記述言語
- [Extensible Stylesheet Language - Wikipedia](https://ja.wikipedia.org/wiki/Extensible_Stylesheet_Language)

### 例

```xml
<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
　<xsl:template match="/">
　　<html>
　　　<body>
　　　　<xsl:apply-templates select="おこづかい帳/支出" />
　　　</body>
　　</html>
　</xsl:template>

　<xsl:template match="おこづかい帳/支出">
　　<table border="1">
　　　<xsl:for-each select="内容">
　　　<th colspan="3"> <xsl:value-of select="日付" /></th>
　　　　<tr>
　　　　　<th>交通費</th><th>食費</th><th>嗜好品</th>
　　　　</tr>
　　　　<tr>
　　　　　<td><xsl:value-of select="交通費" />円</td>
　　　　　<td><xsl:value-of select="食費" />円</td>
　　　　　<td><xsl:value-of select="嗜好品" />円</td>
　　　　</tr>
　　　</xsl:for-each>
　　</table>
　</xsl:template>
</xsl:stylesheet>
```

## 要素

| 分類           | 要素                    | 概要                               |
| -------------- | ----------------------- | ---------------------------------- |
| テンプレート系 | `<xsl:template>`        | テンプレートを定義する。           |
| テンプレート系 | `<xsl:apply-templates>` | 該当するテンプレートを適用する。   |
| テンプレート系 | `<xsl:call-template>`   | 指定されたテンプレートを呼び出す。 |
| 出力系         | `<xsl:value-of>`        | 該当する表現の値を代入する。       |
| 出力系         | `<xsl:element>`         | エレメントノードを作成する。       |
| 出力系         | `<xsl:attribute>`       | 属性ノードを作成する。             |
| 出力系         | `<xsl:text>`            | テキストノードを作成する。         |
| フロー系       | `<xsl:for-each>`        | ループ処理を行う。                 |

- [サンプルで覚えるXSLTプログラミング](https://atmarkit.itmedia.co.jp/fxml/tanpatsu/xslt/xslt03.html)
