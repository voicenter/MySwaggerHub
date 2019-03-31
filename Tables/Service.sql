CREATE TABLE Service
(
    ServiceID int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ServiceName varchar(128),
    Description varchar(1024) DEFAULT '',
    ExternalDocsUrl varchar(512)
);
INSERT INTO Service (ServiceName, Description, ExternalDocsUrl) VALUES ('Providers', 'SIP providers managment ', null);
INSERT INTO Service (ServiceName, Description, ExternalDocsUrl) VALUES ('ProviderPrefix', 'ProviderPrefix details update', null);
INSERT INTO Service (ServiceName, Description, ExternalDocsUrl) VALUES ('Account', 'Account details update', null);
INSERT INTO Service (ServiceName, Description, ExternalDocsUrl) VALUES ('Prefix', 'prefix of the destination', null);
INSERT INTO Service (ServiceName, Description, ExternalDocsUrl) VALUES ('ProviderGateway', 'Provider SIP server', null);
INSERT INTO Service (ServiceName, Description, ExternalDocsUrl) VALUES ('AccountProviders', 'Account Providers', null);
INSERT INTO Service (ServiceName, Description, ExternalDocsUrl) VALUES ('ServerProviderGateways', 'Server Provider Gateways', null);