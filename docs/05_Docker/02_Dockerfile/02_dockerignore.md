# Docker/Dockerfile/dockerignore

## ファイル

| ファイル        | 概要                                                 |
| --------------- | ---------------------------------------------------- |
| `.dockerignore` | `COPY`句で無視するファイル・ディレクトリを記述する。 |

## 例

```text
*.md
!README*.md
README-secret.md
```
