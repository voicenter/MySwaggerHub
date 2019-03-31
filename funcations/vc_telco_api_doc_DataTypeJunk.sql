CREATE TABLE vc_telco_api_doc.DataTypeJunk
(
    DataTypeID tinyint(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    DataTypeName varchar(32)
);
CREATE INDEX DataTypeID ON vc_telco_api_doc.DataTypeJunk (DataTypeID);