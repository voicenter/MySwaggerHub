CREATE TABLE ParameterType
(
    ParameterTypeID tinyint(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ParameterTypeName varchar(32),
    ParameterTypeTag varchar(16),
    ParameterTypeFormat varchar(25),
    ParameterTypeMin int(11),
    ParameterTypeMax int(11),
    ParameterTypePatternRegex varchar(512)
);
CREATE INDEX ParameterTypeID ON ParameterType (ParameterTypeID);
