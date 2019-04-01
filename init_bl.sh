#!/bin/bash
cat ./Tables/BL/AuthTypeMethod.sql | mysql -u ${MYSQL_USER} -p${MYSQL_PASSWORD} --database=${DB_NAME} --host=${MYSQL_HOST}
cat ./Tables/BL/Method.sql | mysql -u ${MYSQL_USER} -p${MYSQL_PASSWORD} --database=${DB_NAME} --host=${MYSQL_HOST}
cat ./Tables/BL/MethodParameter.sql | mysql -u ${MYSQL_USER} -p${MYSQL_PASSWORD} --database=${DB_NAME} --host=${MYSQL_HOST}
cat ./Tables/BL/Object.sql | mysql -u ${MYSQL_USER} -p${MYSQL_PASSWORD} --database=${DB_NAME} --host=${MYSQL_HOST}
cat ./Tables/BL/ObjectParameter.sql | mysql -u ${MYSQL_USER} -p${MYSQL_PASSWORD} --database=${DB_NAME} --host=${MYSQL_HOST}
cat ./Tables/BL/Service.sql | mysql -u ${MYSQL_USER} -p${MYSQL_PASSWORD} --database=${DB_NAME} --host=${MYSQL_HOST}
cat ./Tables/BL/Version.sql | mysql -u ${MYSQL_USER} -p${MYSQL_PASSWORD} --database=${DB_NAME} --host=${MYSQL_HOST}
cat ./Tables/BL/VersionStatus.sql | mysql -u ${MYSQL_USER} -p${MYSQL_PASSWORD} --database=${DB_NAME} --host=${MYSQL_HOST}