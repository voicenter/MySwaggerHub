CREATE TABLE vc_telco_api_doc.ParameterPermissionType
(
    ParameterPermissionTypeID int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ParameterPermissionTypeName varchar(24)
);
INSERT INTO vc_telco_api_doc.ParameterPermissionType (ParameterPermissionTypeName) VALUES ('None');
INSERT INTO vc_telco_api_doc.ParameterPermissionType (ParameterPermissionTypeName) VALUES ('Account');
INSERT INTO vc_telco_api_doc.ParameterPermissionType (ParameterPermissionTypeName) VALUES ('User');