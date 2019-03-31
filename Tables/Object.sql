CREATE TABLE Object
(
    ObjectID int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ObjectName varchar(64),
    ObjectTagName varchar(64),
    MinVersion double,
    MaxVersion double
);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('Provider', 'provider', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('Prefix', 'prefix', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('ProviderPrefixRate', 'ProviderPrefixRate', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('ProviderPrefixUpdate', 'ProviderPrefixUpdate', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('AccountData', 'AccountData', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('ProviderGateway', 'ProviderGateway', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('AccountDialRules', 'AccountDialRules', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('ProviderGroup', 'ProviderGroup', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('ProviderPrefix', 'ProviderPrefix', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('AccountProvider', 'AccountProvider', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('Error', 'Error', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('Response', 'Response', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('ProviderList', 'Providerlist', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('ProvidersAddList', 'ProvidersAddList', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('ProviderAdd', 'ProviderAdd', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('ProvidersDisableList', 'ProvidersDisableList', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('ProviderDisable', 'ProviderDisable', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('ProviderPrefixAddList', 'ProviderPrefixAddList', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('ProviderPrefixAdd', 'ProviderPrefixAdd', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('ProviderPrefixUpdateList', 'ProviderPrefixUpdateList', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('ProviderPrefixUpdate', 'ProviderPrefixUpdate', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('ProviderPrefixListResponse', 'ProviderPrefixListResponse', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('ProviderPrefixUpdateResponse', 'ProviderPrefixUpdateResponse', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('ProviderPrefixBulkResponse', 'ProviderPrefixUpdateResponse', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('ProviderPrefixBulkRequest', 'ProviderPrefixBulkRequest', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('Account', 'Account', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('AccountListRequest', 'AccountListRequest', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('AccountListResponse', 'AccountListResponse', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('PrefixListResponse', 'PrefixListResponse', 0, 1000);
INSERT INTO Object (ObjectName, ObjectTagName, MinVersion, MaxVersion) VALUES ('ServerProviderGateway', 'ServerProviderGateway', 0, 1000);