CREATE TABLE vc_telco_api_doc.AuthType
(
    AuthTypeID tinyint(4) PRIMARY KEY NOT NULL,
    AuthTypeName varchar(24)
);
INSERT INTO vc_telco_api_doc.AuthType (AuthTypeID, AuthTypeName) VALUES (0, 'None');
INSERT INTO vc_telco_api_doc.AuthType (AuthTypeID, AuthTypeName) VALUES (1, 'Basic');
INSERT INTO vc_telco_api_doc.AuthType (AuthTypeID, AuthTypeName) VALUES (2, 'Editor');
INSERT INTO vc_telco_api_doc.AuthType (AuthTypeID, AuthTypeName) VALUES (3, 'Admin');