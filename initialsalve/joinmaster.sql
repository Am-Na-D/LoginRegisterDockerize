CHANGE MASTER TO
MASTER_HOST='mysql-master',
MASTER_USER='replication',
MASTER_PASSWORD='Slaverepl123',
MASTER_LOG_FILE='87e8982d00d1-bin.000004',
MASTER_LOG_POS=349;
START SLAVE;