# MySQL WorkBench

## その他

### その他

- 主キーをWHERE条件とせずDELETEを行いたい場合は、以下のようにする。

  ```sql
  SET SQL_SAFE_UPDATES = 0;
  ```
