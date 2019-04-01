#!/bin/bash
cat ./dump_base_data.sql | mysql -u ${MYSQL_USER} -p${MYSQL_PASSWORD} --database=${DB_NAME} --host=${MYSQL_HOST}