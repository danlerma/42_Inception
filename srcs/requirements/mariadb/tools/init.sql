CREATE DATABASE wordpress_inception;
CREATE USER 'dan_db'@'%' IDENTIFIED BY 'dan123';
GRANT ALL PRIVILEGES ON *.* TO 'dan_db'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;