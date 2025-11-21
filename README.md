# MySQL 8.4 Docker Setup

MySQL 8.4를 Docker로 실행하기 위한 설정 파일들입니다.

## 사용 방법

### 1. Docker Compose로 실행

```bash
docker-compose up -d
```

### 2. 직접 빌드 및 실행

```bash
# 이미지 빌드
docker build -t mysql:8.4-custom .

# 컨테이너 실행
docker run -d \
  --name mysql_8.4 \
  -p 3306:3306 \
  -e MYSQL_ROOT_PASSWORD=rootpassword \
  -e MYSQL_DATABASE=mydb \
  -e MYSQL_USER=myuser \
  -e MYSQL_PASSWORD=mypassword \
  -v mysql_data:/var/lib/mysql \
  mysql:8.4-custom
```

## 접속 방법

```bash
# MySQL 컨테이너 접속
docker exec -it mysql_8.4 mysql -u root -p

# 또는 외부에서 접속
mysql -h 127.0.0.1 -P 3306 -u myuser -p
```

## 환경 변수

- `MYSQL_ROOT_PASSWORD`: root 사용자 비밀번호
- `MYSQL_DATABASE`: 생성할 데이터베이스 이름
- `MYSQL_USER`: 생성할 사용자 이름
- `MYSQL_PASSWORD`: 사용자 비밀번호

## 커스터마이징

### MySQL 설정 파일 추가

`my.cnf` 파일을 생성하고 Dockerfile 및 docker-compose.yml에서 주석을 해제하세요.

### 초기화 스크립트 추가

`init.sql` 파일을 생성하고 Dockerfile 및 docker-compose.yml에서 주석을 해제하세요.

## 중지 및 삭제

```bash
# 중지
docker-compose down

# 볼륨까지 삭제
docker-compose down -v
```
