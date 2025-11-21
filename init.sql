-- 초기화 스크립트
-- 데이터베이스는 자동으로 생성됨 (MYSQL_DATABASE 환경 변수)

USE swyp;

-- 예시 테이블 생성 (필요시 수정)
--CREATE TABLE IF NOT EXISTS users (
--    id BIGINT AUTO_INCREMENT PRIMARY KEY,
--    username VARCHAR(50) NOT NULL UNIQUE,
--    email VARCHAR(100) NOT NULL UNIQUE,
--    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
--) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 권한 확인 및 설정
GRANT ALL PRIVILEGES ON swyp.* TO 'swyp'@'%';
FLUSH PRIVILEGES;

SELECT 'Database initialization completed!' AS status;
