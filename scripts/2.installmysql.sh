RUNLEVEL=1 DEBIAN_FRONTEND=noninteractive apt-get install -y wget mysql-server
sed -i 's/^bind-address.*/bind-address = 0.0.0.0/' /etc/mysql/my.cnf
sed -i "s/\[mysqldump\]/\ lower_case_table_names=1\n[mysqldump\]/" /etc/mysql/my.cnf
mysqladmin -u root password password
