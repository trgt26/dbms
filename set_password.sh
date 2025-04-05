#!/bin/bash

# Define your new root password here
NEW_PASSWORD="admin"

echo "[*] Stopping MariaDB service..."
sudo systemctl stop mariadb

echo "[*] Starting MariaDB in safe mode (skip-grant-tables)..."
sudo mysqld_safe --skip-grant-tables --skip-networking &

# Give it a few seconds to boot up
sleep 5

echo "[*] Updating MariaDB root password..."

# Run SQL commands
sudo mysql -u root <<EOF
USE mysql;
FLUSH PRIVILEGES;
ALTER USER  'root'@'localhost' IDENTIFIED BY '${NEW_PASSWORD}';

EXIT;
EOF

echo "[*] Killing safe-mode MariaDB process..."
sudo pkill -f mysqld_safe
sleep 2

echo "[*] Restarting MariaDB service..."
sudo systemctl start mariadb

echo "[✓] Password reset complete. Try logging in with:"
echo "    mysql -u root -p"
