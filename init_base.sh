#!/bin/bash
cat ./Tables/Base/AuthType.sql | mysql -u ${MYSQL_USER} -p${MYSQL_PASSWORD} --database=${DB_NAME} --host=${MYSQL_HOST}
cat ./Tables/Base/MethodParameterPlace.sql | mysql -u ${MYSQL_USER} -p${MYSQL_PASSWORD} --database=${DB_NAME} --host=${MYSQL_HOST}
cat ./Tables/Base/MethodType.sql | mysql -u ${MYSQL_USER} -p${MYSQL_PASSWORD} --database=${DB_NAME} --host=${MYSQL_HOST}
cat ./Tables/Base/ParameterPermissionType.sql | mysql -u ${MYSQL_USER} -p${MYSQL_PASSWORD} --database=${DB_NAME} --host=${MYSQL_HOST}
cat ./Tables/Base/ParameterType.sql | mysql -u ${MYSQL_USER} -p${MYSQL_PASSWORD} --database=${DB_NAME} --host=${MYSQL_HOST}
cat ./Tables/Base/PermissionEntityType.sql | mysql -u ${MYSQL_USER} -p${MYSQL_PASSWORD} --database=${DB_NAME} --host=${MYSQL_HOST}