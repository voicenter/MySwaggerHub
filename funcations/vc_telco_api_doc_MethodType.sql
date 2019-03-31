CREATE TABLE vc_telco_api_doc.MethodType
(
    MethodTypeID tinyint(4) PRIMARY KEY NOT NULL,
    MethodTypeName varchar(8)
);
INSERT INTO vc_telco_api_doc.MethodType (MethodTypeID, MethodTypeName) VALUES (1, 'get');
INSERT INTO vc_telco_api_doc.MethodType (MethodTypeID, MethodTypeName) VALUES (2, 'post');