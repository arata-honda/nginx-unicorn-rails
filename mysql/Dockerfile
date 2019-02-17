FROM mysql:8.0

COPY ./my.cnf /etc/mysql/conf.d/my.cnf

# 単体で動かす場合は 引数で環境変数を指定する。
# docker run -e MYSQL_ROOT_PASSWORD=pass -p 3306:3306 -it ${image_id} /bin/bash
