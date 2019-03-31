CREATE TABLE PermissionEntityType
(
    PermissionEntityTypeID int(11) PRIMARY KEY NOT NULL,
    PermissionEntityTypeName varchar(32)
);
INSERT INTO PermissionEntityType (PermissionEntityTypeID, PermissionEntityTypeName) VALUES (0, 'None');
INSERT INTO PermissionEntityType (PermissionEntityTypeID, PermissionEntityTypeName) VALUES (1, 'Admin');
INSERT INTO PermissionEntityType (PermissionEntityTypeID, PermissionEntityTypeName) VALUES (2, 'Partner');
INSERT INTO PermissionEntityType (PermissionEntityTypeID, PermissionEntityTypeName) VALUES (3, 'Account');
INSERT INTO PermissionEntityType (PermissionEntityTypeID, PermissionEntityTypeName) VALUES (4, 'User');