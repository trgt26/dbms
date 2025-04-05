Forgot password in linux:
`sudo systemctl stop mariadb`

`sudo mysqld_safe --skip-grant-tables --skip-networking &`

Use another Terminal:

`mysql -u root`

`USE mysql;`

`FLUSH PRIVILEGES;`

`ALTER USER  'root'@'localhost' IDENTIFIED BY '(password)';`

`EXIT;`

