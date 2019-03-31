CREATE TABLE vc_telco_api_doc.PermissionEntityType
(
    PermissionEntityTypeID int(11) PRIMARY KEY NOT NULL,
    PermissionEntityTypeName varchar(32)
);
INSERT INTO vc_telco_api_doc.PermissionEntityType (PermissionEntityTypeID, PermissionEntityTypeName) VALUES (0, 'None');
INSERT INTO vc_telco_api_doc.PermissionEntityType (PermissionEntityTypeID, PermissionEntityTypeName) VALUES (1, 'Admin');
INSERT INTO vc_telco_api_doc.PermissionEntityType (PermissionEntityTypeID, PermissionEntityTypeName) VALUES (2, 'Partner');
INSERT INTO vc_telco_api_doc.PermissionEntityType (PermissionEntityTypeID, PermissionEntityTypeName) VALUES (3, 'Account');
INSERT INTO vc_telco_api_doc.PermissionEntityType (PermissionEntityTypeID, PermissionEntityTypeName) VALUES (4, 'User');