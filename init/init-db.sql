-- TiDB 初始化脚本
-- 设置 root 用户密码为 123456

-- 等待一秒确保数据库完全就绪
SELECT SLEEP(1);

-- 设置 root 用户密码
ALTER USER 'root'@'%' IDENTIFIED BY '123456';

-- 刷新权限
FLUSH PRIVILEGES;

-- 创建一个测试数据库（可选）
CREATE DATABASE IF NOT EXISTS testdb;

-- 显示设置结果
SELECT 'Password set successfully for root user' AS message;
