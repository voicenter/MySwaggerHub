#!/bin/bash
cat ./Demo/dump_bl_demo_data.sql | mysql -u ${MYSQL_USER} -p${MYSQL_PASSWORD} --database=${DB_NAME} --host=${MYSQL_HOST}