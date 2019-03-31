CREATE TABLE Method
(
    MethodID int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ServiceID int(11) NOT NULL,
    MethodName varchar(32) DEFAULT '' NOT NULL,
    MethodPath varchar(128),
    Description varchar(1024),
    Summary varchar(1024),
    MinVersion double,
    MaxVersion double,
    OperationID varchar(32),
    MethodType tinyint(4) DEFAULT '2'
);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (1, 'Add', null, 'Add a provider', null, 0, 1000, '1', 2);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (1, 'List', null, 'List of providers ', null, 0, 1000, '1', 2);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (1, 'Update', null, 'Update a provider', null, 0, 1000, '1', 2);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (1, 'UpdateStatus', null, 'Delete a provider', null, 0, 1000, '1', 1);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (2, 'List', null, 'Get list of ProviderPrefix for displaying current Prefix costs ', null, 0, 1000, '1', 2);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (2, 'UpdateRequest', null, 'Request a new Provider Prefix Update', null, 0, 1000, '1', 2);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (2, 'UpdateBulk', null, 'Send Provider Rate To a specific ProviderPrefixUpdate Request', null, 0, 1000, '1', 2);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (3, 'Add', null, 'Add account', null, 0, 1000, '1', 2);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (3, 'List', null, 'List of account', null, 0, 1000, '1', 2);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (3, 'Update', null, 'Update a account', null, 0, 1000, '1', 2);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (3, 'UpdateStatus', null, 'Delete account', null, 0, 1000, '1', 1);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (4, 'List', null, 'List Prefix', null, 0, 1000, '1', 1);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (6, 'Add', null, 'Add Provider Gateway', null, 0, 1000, '1', 1);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (6, 'Update', null, 'Update Provider Gateway', null, 0, 1000, '1', 2);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (6, 'List', null, 'List Provider gateway', null, 0, 1000, '1', 2);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (6, 'UpdateStatus', null, 'Disable Provider Gateway', null, 0, 1000, '1', 2);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (7, 'Add', null, 'Add acount providers', null, 0, 1000, '1', 2);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (7, 'List', null, 'List account providers', null, 0, 1000, '1', 2);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (7, 'Update', null, 'Update account providers', null, 0, 1000, '1', 2);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (7, 'UpdateStatus', null, 'Disable account providers', null, 0, 1000, '1', 1);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (8, 'Add', null, 'Add ServerProviderGateways', null, 0, 1000, '1', 1);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (8, 'List', null, 'list ServerProviderGateways', null, 0, 1000, '1', 1);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (8, 'Update', null, 'ServerProviderGateways update ', null, 0, 1000, '1', 1);
INSERT INTO Method (ServiceID, MethodName, MethodPath, Description, Summary, MinVersion, MaxVersion, OperationID, MethodType) VALUES (8, 'UpdateStatus', null, 'ServerProviderGateways update status', null, 0, 1000, '1', 1);