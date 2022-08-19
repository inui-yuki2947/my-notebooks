# MySQL/GUI/MySQL WorkBench

## 共通

### 参考資料

- [MySQL :: MySQL Workbench](https://www.mysql.com/jp/products/workbench/)

## その他

- 主キーをWHERE条件とせずDELETEを行いたい場合は、以下のようにする。

  ```sql
  SET SQL_SAFE_UPDATES = 0;
  ```
