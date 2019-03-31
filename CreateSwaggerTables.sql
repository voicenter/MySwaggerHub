create table AuthType
(
	AuthTypeID tinyint not null
		primary key,
	AuthTypeName varchar(24) null
)
;

create table AuthTypeMethod
(
	AuthTypeMethodID int auto_increment
		primary key,
	AuthTypeID int not null,
	MethodID int not null,
	constraint AuthTypeMethod_AuthTypeID_MethodID_uindex
		unique (AuthTypeID, MethodID)
)
;

create table DataTypeJunk
(
	DataTypeID tinyint auto_increment
		primary key,
	DataTypeName varchar(32) null
)
;

create index DataTypeID
	on DataTypeJunk (DataTypeID)
;

create table Method
(
	MethodID int auto_increment
		primary key,
	ServiceID int not null,
	MethodName varchar(32) default '' not null,
	MethodPath varchar(128) null,
	Description varchar(1024) null,
	Summary varchar(1024) null,
	MinVersion double null,
	MaxVersion double null,
	OperationID varchar(32) null,
	MethodType tinyint default '2' null
)
;

create table MethodParameter
(
	MethodParameterID int auto_increment
		primary key,
	MethodID int default '0' not null,
	MethodParameterPlace tinyint default '1' null,
	MethodParameterName varchar(64) null,
	ParameterType tinyint null,
	ParameterObject int default '0' null,
	MinVersion double default '0' null,
	MaxVersion double default '1000' null,
	MethodParameterOrder int default '10' null,
	Required tinyint(1) default '0' not null,
	Description varchar(1024) default '' not null,
	Example varchar(1024) null,
	ParameterPermissionType int default '0' null,
	constraint MethodParameterPlaceName_pk
		unique (MethodID, MethodParameterPlace, MethodParameterName)
)
;

create table MethodParameterPlace
(
	MethodParameterPlaceID tinyint auto_increment
		primary key,
	MethodParameterPlaceName varchar(32) null
)
;

create table MethodType
(
	MethodTypeID tinyint not null
		primary key,
	MethodTypeName varchar(8) null
)
;

create table Object
(
	ObjectID int auto_increment
		primary key,
	ObjectName varchar(64) null,
	ObjectTagName varchar(64) null,
	MinVersion double null,
	MaxVersion double null
)
;

create table ObjectParameter
(
	ObjectParameterID int auto_increment,
	ObjectParameterName varchar(64) null,
	ParameterType tinyint null,
	ParameterObject int default '0' null,
	SubObject int null,
	MaxVersion double null,
	ObjectParameterOrder int default '10' null,
	Required tinyint(1) default '0' null,
	Description varchar(1024) default '' null,
	Example varchar(1024) default '' null,
	MinVersion double null,
	ParameterPermissionType int default '0' null,
	constraint ObjectParameter_ObjectParameterID_pk
		unique (ObjectParameterID)
)
;

create table ParameterPermissionType
(
	ParameterPermissionTypeID int auto_increment
		primary key,
	ParameterPermissionTypeName varchar(24) null
)
;

create table ParameterType
(
	ParameterTypeID tinyint auto_increment
		primary key,
	ParameterTypeName varchar(32) null,
	ParameterTypeTag varchar(16) null,
	ParameterTypeFormat varchar(25) null,
	ParameterTypeMin int null,
	ParameterTypeMax int null,
	ParameterTypePatternRegex varchar(512) null
)
;

create index ParameterTypeID
	on ParameterType (ParameterTypeID)
;

create table PermissionEntityType
(
	PermissionEntityTypeID int not null
		primary key,
	PermissionEntityTypeName varchar(32) null
)
;

create table Service
(
	ServiceID int auto_increment
		primary key,
	ServiceName varchar(128) null,
	Description varchar(1024) default '' null,
	ExternalDocsUrl varchar(512) null
)
;

create table Version
(
	VersionID int auto_increment
		primary key,
	VersionNumber double default '0.1' null,
	VersionName varchar(32) null,
	VersionStatus tinyint null,
	InfoDescription varchar(1024) null,
	InfoTitle varchar(64) null,
	Host varchar(32) null,
	SwaggerTemplate json null
)
;

create table VersionStatus
(
	VersionStatusID tinyint not null
		primary key,
	VersionStatusName varchar(32) null
)
;
