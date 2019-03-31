CREATE TABLE DataTypeJunk
(
    DataTypeID tinyint(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    DataTypeName varchar(32)
);
CREATE INDEX DataTypeID ON DataTypeJunk (DataTypeID);