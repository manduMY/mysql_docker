FROM mysql:8.4

# MySQL 설정 파일 복사
COPY my.cnf /etc/mysql/conf.d/

# 초기화 SQL 스크립트 복사
COPY init.sql /docker-entrypoint-initdb.d/

# 포트 노출
EXPOSE 3306

# 데이터 볼륨
VOLUME /var/lib/mysql
