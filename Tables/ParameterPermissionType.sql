CREATE TABLE ParameterPermissionType
(
    ParameterPermissionTypeID int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ParameterPermissionTypeName varchar(24)
);
INSERT INTO ParameterPermissionType (ParameterPermissionTypeName) VALUES ('None');
INSERT INTO ParameterPermissionType (ParameterPermissionTypeName) VALUES ('Account');
INSERT INTO ParameterPermissionType (ParameterPermissionTypeName) VALUES ('User');