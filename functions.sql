create function FN_GetMethodAuthType (methodID int) returns json
BEGIN

  DECLARE Response json;
  SET Response = (SELECT
      json_arrayagg(AuthType.AuthTypeName)
    FROM AuthTypeMethod
      INNER JOIN AuthType
        ON AuthTypeMethod.AuthTypeID = AuthType.AuthTypeID
    WHERE AuthTypeMethod.MethodID = methodID);
  RETURN IFNULL(Response, JSON_ARRAY('None'));
END;

create function FN_GetMethodParameterInfo (methodParameterID int) returns json 
BEGIN
  DECLARE Response json;
  DECLARE methodParameterTypeName varchar(32);
  DECLARE methodParameterName varchar(32);
  DECLARE methodParameterTypeTag varchar(16);
  DECLARE methodParameterTypeFormat varchar(25);

  DECLARE parameterTypeID int;
  DECLARE parameterSubObjectName varchar(32);
  DECLARE parameterPermissionType varchar(32);

  DECLARE methodType int;
  DECLARE methodParameterTypeMin int;
  DECLARE methodParameterTypeMax int;
  DECLARE methodParameterTypePatternRegex varchar(512);
  DECLARE methodParameterExample varchar(1024);
  DECLARE methodParameterDescription varchar(1024);
  DECLARE methodParameterSchema json;
  DECLARE methodParameterPlaceID tinyint;
  SET methodParameterName = '';
  SET methodParameterName = (SELECT
      MethodParameter.MethodParameterName
    FROM MethodParameter
    WHERE MethodParameter.MethodParameterID = methodParameterID);
  SET methodParameterTypeTag = (SELECT
      ParameterType.ParameterTypeTag
    FROM MethodParameter
      INNER JOIN ParameterType
        ON MethodParameter.ParameterType = ParameterType.ParameterTypeID
    WHERE MethodParameter.MethodParameterID = methodParameterID);
  SET methodParameterPlaceID = (SELECT
      MethodParameter.MethodParameterPlace
    FROM MethodParameter
      INNER JOIN ParameterType
        ON MethodParameter.ParameterType = ParameterType.ParameterTypeID
    WHERE MethodParameter.MethodParameterID = methodParameterID);
  SET methodParameterTypeName = (SELECT
      ParameterType.ParameterTypeName
    FROM MethodParameter
      INNER JOIN ParameterType
        ON MethodParameter.ParameterType = ParameterType.ParameterTypeID
    WHERE MethodParameter.MethodParameterID = methodParameterID);
  SET methodParameterTypeFormat = (SELECT
      ParameterType.ParameterTypeFormat
    FROM MethodParameter
      INNER JOIN ParameterType
        ON MethodParameter.ParameterType = ParameterType.ParameterTypeID
    WHERE MethodParameter.MethodParameterID = methodParameterID);
  SET methodParameterTypeMin = (SELECT
      ParameterType.ParameterTypeMin
    FROM MethodParameter
      INNER JOIN ParameterType
        ON MethodParameter.ParameterType = ParameterType.ParameterTypeID
    WHERE MethodParameter.MethodParameterID = methodParameterID);
  SET methodParameterTypeMax = (SELECT
      ParameterType.ParameterTypeMax
    FROM MethodParameter
      INNER JOIN ParameterType
        ON MethodParameter.ParameterType = ParameterType.ParameterTypeID
    WHERE MethodParameter.MethodParameterID = methodParameterID);
  SET methodParameterTypePatternRegex = (SELECT
      ParameterType.ParameterTypePatternRegex
    FROM MethodParameter
      INNER JOIN ParameterType
        ON MethodParameter.ParameterType = ParameterType.ParameterTypeID
    WHERE MethodParameter.MethodParameterID = methodParameterID);
  SET methodParameterExample = (SELECT
      MethodParameter.Example
    FROM MethodParameter
      INNER JOIN ParameterType
        ON MethodParameter.ParameterType = ParameterType.ParameterTypeID
    WHERE MethodParameter.MethodParameterID = methodParameterID);
  SET methodParameterDescription = (SELECT
      MethodParameter.Description
    FROM MethodParameter
      INNER JOIN ParameterType
        ON MethodParameter.ParameterType = ParameterType.ParameterTypeID
    WHERE MethodParameter.MethodParameterID = methodParameterID);
  SET parameterTypeID = (SELECT
      ParameterType.ParameterTypeID
    FROM MethodParameter
      INNER JOIN ParameterType
        ON MethodParameter.ParameterType = ParameterType.ParameterTypeID
    WHERE MethodParameter.MethodParameterID = methodParameterID);
  SET parameterPermissionType = (SELECT
      ParameterPermissionType.ParameterPermissionTypeName
    FROM MethodParameter
      INNER JOIN ParameterPermissionType
        ON MethodParameter.ParameterPermissionType = ParameterPermissionType.ParameterPermissionTypeID
    WHERE MethodParameter.MethodParameterID = methodParameterID);
set methodType = (SELECT
      Method.MethodType
    FROM MethodParameter
      INNER JOIN Method
        ON MethodParameter.MethodID = Method.MethodID
    WHERE MethodParameter.MethodParameterID = methodParameterID);
    
  /*   if(parameterTypeID=13 or parameterTypeID=14) THEN
  
          set  parameterSubObjectName =  (SELECT  Object.ObjectName         FROM MethodParameter INNER JOIN Object ON             MethodParameter.ParameterObject=Object.ObjectID where MethodParameter.MethodParameterID = methodParameterID);
          set Response = json_object('$ref',concat('#/definitions/',parameterSubObjectName));
       RETURN Response;
     ELSE*/
  IF (parameterPermissionType <> 'None') THEN
    SET Response = JSON_OBJECT('x-AuthFieldType', parameterPermissionType);
  ELSE
    SET Response = JSON_OBJECT();
  END IF;

  IF (IFNULL(methodParameterName, '') <> '') THEN
    SET Response = JSON_SET(Response, '$.name', methodParameterName);
  END IF;

  IF (IFNULL(methodParameterDescription, '') <> '') THEN
    SET Response = JSON_SET(Response, '$.description', methodParameterDescription);
  END IF;
  IF (methodParameterPlaceID > 1) THEN


    /*    if(IFNULL(methodParameterExample,'')<>'' and   methodParameterTypeTag<>'integer') THEN
            set Response = json_set(Response,'$.example',methodParameterExample);
         END IF;*/
    IF (IFNULL(methodParameterTypePatternRegex, '') <> '') THEN
      SET Response = JSON_SET(Response, '$.pattern', methodParameterTypePatternRegex);
    END IF;

    IF (IFNULL(methodParameterTypeFormat, '') <> '') THEN
      SET Response = JSON_SET(Response, '$.format', methodParameterTypeFormat);
    END IF;


    IF (IFNULL(methodParameterTypeMin, '') <> ''
      AND methodParameterTypeTag = 'string') THEN
      SET Response = JSON_SET(Response, '$.minLength', methodParameterTypeMin);
    END IF;
    IF (IFNULL(methodParameterTypeMax, '') <> ''
      AND methodParameterTypeTag = 'string') THEN
      SET Response = JSON_SET(Response, '$.maxLength', methodParameterTypeMax);
    END IF;

    IF (IFNULL(methodParameterTypeMin, '') <> ''
      AND methodParameterTypeTag = 'integer') THEN
      SET Response = JSON_SET(Response, '$.minimum', methodParameterTypeMin);
    END IF;
    IF (IFNULL(methodParameterTypeMax, '') <> ''
      AND methodParameterTypeTag = 'integer') THEN
      SET Response = JSON_SET(Response, '$.maximum', methodParameterTypeMax);
    END IF;
    IF (IFNULL(methodParameterTypeMax, '') <> ''
      AND methodParameterTypeTag = 'integer') THEN
      SET Response = JSON_SET(Response, '$.maximum', methodParameterTypeMax);
    END IF;
  ELSE
    SET Response = JSON_SET(Response, '$.required', TRUE);

  END IF;

  IF (methodParameterTypeTag = 'object') THEN
    SET methodParameterSchema = (SELECT
        JSON_OBJECT('$ref', CONCAT('#/definitions/', Object.ObjectName))
      FROM MethodParameter
        INNER JOIN Object
          ON MethodParameter.ParameterObject = Object.ObjectID
      WHERE MethodParameter.MethodParameterID = methodParameterID);
    SET Response = JSON_SET(Response, '$.schema', methodParameterSchema);
  ELSE
    SET Response = JSON_SET(Response, '$.type', methodParameterTypeTag);
  END IF;

IF (parameterTypeID = 14) THEN

    SET parameterSubObjectName = ( SELECT  Object.ObjectName
      FROM MethodParameter
        INNER JOIN Object
          ON MethodParameter.ParameterObject = Object.ObjectID
      WHERE MethodParameter.MethodParameterID = methodParameterID);


  SET Response = JSON_OBJECT('type', 'array', 'items', JSON_OBJECT('$ref', CONCAT('#/definitions/', parameterSubObjectName)));
END IF;
  IF (methodParameterPlaceID = 4 or (methodParameterPlaceID = 2 and methodType=2 )) THEN
    SET Response = JSON_SET(Response, '$.in', 'body');
  ELSEIF (methodParameterPlaceID = 1) THEN
    SET Response = JSON_SET(Response, '$.in', 'path');
  ELSE
    SET Response = JSON_SET(Response, '$.in', 'query');
  END IF;


  RETURN Response;

/*
   END IF;*/




END;

create function FN_GetMethodPath (methodID int) returns varchar(1526) 
BEGIN

  DECLARE Path varchar(512);
  DECLARE PathVar varchar(1024);
  SET PathVar = '';
  SET Path = (SELECT
      Method.MethodPath
    FROM Method
      INNER JOIN Service
        ON Method.ServiceID = Service.ServiceID
    WHERE Method.MethodID = methodID);

  SET Path = (SELECT
      CONCAT('/', Service.ServiceName, '/', Method.MethodName)
    FROM Method
      INNER JOIN Service
        ON Method.ServiceID = Service.ServiceID
    WHERE Method.MethodID = methodID);





  SET PathVar = (SELECT
      GROUP_CONCAT(CONCAT('{', MethodParameterName, '}') SEPARATOR '/')
    FROM (SELECT
        MethodParameterName
      FROM MethodParameter
      WHERE MethodParameter.MethodID = methodID
      AND MethodParameterPlace = 1
      ORDER BY MethodParameter.MethodParameterOrder) MethodParameterNameList);



  RETURN CONCAT(Path, '/', IFNULL(PathVar, ''));
END;

create function FN_GetMethodResponse (methodID int) returns json
BEGIN
    DECLARE SchemaObject json;
    DECLARE Response json;
    DECLARE properties json;
    DECLARE responseBodyObjectID int;
    DECLARE responseParameterType int;
    SET responseBodyObjectID = 0;
    SET responseBodyObjectID = (SELECT
                                    MethodParameter.ParameterObject
                                FROM MethodParameter
                                WHERE MethodParameter.MethodID = methodID
                                  AND MethodParameter.MethodParameterPlace = 5);
    SET responseParameterType = (SELECT
                                    MethodParameter.ParameterType
                                FROM MethodParameter
                                WHERE MethodParameter.MethodID = methodID
                                  AND MethodParameter.MethodParameterPlace = 5);

    IF (responseBodyObjectID > 0) THEN
        IF (responseParameterType = 14) THEN
            SET SchemaObject = JSON_OBJECT('type', 'array',
                                            'items', JSON_OBJECT('$ref', (SELECT
                                                                CONCAT('#/definitions/', Object.ObjectName)
                                                                FROM Object
                                                                WHERE Object.ObjectID = responseBodyObjectID)
                                                )
                );
        ELSE
            SET SchemaObject = JSON_OBJECT('$ref', (SELECT
                                                        CONCAT('#/definitions/', Object.ObjectName)
                                                    FROM Object
                                                    WHERE Object.ObjectID = responseBodyObjectID));
        END IF;
    ELSE
        IF (EXISTS (SELECT
                        *
                    FROM MethodParameter
                    WHERE MethodParameter.MethodID = methodID
                      AND MethodParameter.MethodParameterPlace = 5)) THEN
            SET properties = (SELECT
                                  JSON_OBJECTAGG(MethodParameter.MethodParameterName, FN_GetMethodParameterInfo(MethodParameter.MethodParameterID))
                              FROM MethodParameter
                              WHERE MethodParameter.MethodID = methodID
                                AND MethodParameter.MethodParameterPlace = 3);

            SET SchemaObject = JSON_OBJECT('type', 'object',
                                           'properties', properties);
        ELSE
            SET SchemaObject = JSON_OBJECT('$ref', '#/definitions/Response');
        END IF;
    END IF;

    SET Response = JSON_OBJECT(
            '200', JSON_OBJECT(
                    'description', 'Status 200',
                    'schema', SchemaObject
                ),
            '400', JSON_OBJECT(
                    'description', 'Error Response',
                    'schema', JSON_OBJECT('$ref', '#/definitions/Error')
                )
        );
    RETURN Response;
END;

create function FN_GetObjectParamaterInfo (objectParameterID int) returns json 
BEGIN
  DECLARE Response json;
  DECLARE parameterTypeName varchar(32);
  DECLARE parameterTypeTag varchar(16);
  DECLARE patternTypeFormat varchar(25);
  DECLARE parameterTypeID int;

  DECLARE parameterPermissionType varchar(32);
  DECLARE parameterSubObjectName varchar(32);
  DECLARE parameterTypeMin int;
  DECLARE parameterTypeMax int;
  DECLARE parameterTypePatternRegex varchar(512);
  DECLARE parameterExample varchar(1024);
  DECLARE ParameterDescription varchar(1024);

  SET parameterTypeTag = (SELECT
      ParameterType.ParameterTypeTag
    FROM ObjectParameter
      INNER JOIN ParameterType
        ON ObjectParameter.ParameterType = ParameterType.ParameterTypeID
    WHERE ObjectParameter.ObjectParameterID = objectParameterID);
  SET parameterTypeName = (SELECT
      ParameterType.ParameterTypeName
    FROM ObjectParameter
      INNER JOIN ParameterType
        ON ObjectParameter.ParameterType = ParameterType.ParameterTypeID
    WHERE ObjectParameter.ObjectParameterID = objectParameterID);
  SET parameterTypeID = (SELECT
      ParameterType.ParameterTypeID
    FROM ObjectParameter
      INNER JOIN ParameterType
        ON ObjectParameter.ParameterType = ParameterType.ParameterTypeID
    WHERE ObjectParameter.ObjectParameterID = objectParameterID);
  SET patternTypeFormat = (SELECT
      ParameterType.ParameterTypeFormat
    FROM ObjectParameter
      INNER JOIN ParameterType
        ON ObjectParameter.ParameterType = ParameterType.ParameterTypeID
    WHERE ObjectParameter.ObjectParameterID = objectParameterID);
  SET parameterTypeMin = (SELECT
      ParameterType.ParameterTypeMin
    FROM ObjectParameter
      INNER JOIN ParameterType
        ON ObjectParameter.ParameterType = ParameterType.ParameterTypeID
    WHERE ObjectParameter.ObjectParameterID = objectParameterID);
  SET parameterTypeMax = (SELECT
      ParameterType.ParameterTypeMax
    FROM ObjectParameter
      INNER JOIN ParameterType
        ON ObjectParameter.ParameterType = ParameterType.ParameterTypeID
    WHERE ObjectParameter.ObjectParameterID = objectParameterID);
  SET parameterTypePatternRegex = (SELECT
      ParameterType.ParameterTypePatternRegex
    FROM ObjectParameter
      INNER JOIN ParameterType
        ON ObjectParameter.ParameterType = ParameterType.ParameterTypeID
    WHERE ObjectParameter.ObjectParameterID = objectParameterID);
  SET parameterExample = (SELECT
      ObjectParameter.Example
    FROM ObjectParameter
      INNER JOIN ParameterType
        ON ObjectParameter.ParameterType = ParameterType.ParameterTypeID
    WHERE ObjectParameter.ObjectParameterID = objectParameterID);
  SET ParameterDescription = (SELECT
      ObjectParameter.Description
    FROM ObjectParameter
      INNER JOIN ParameterType
        ON ObjectParameter.ParameterType = ParameterType.ParameterTypeID
    WHERE ObjectParameter.ObjectParameterID = objectParameterID);
  SET parameterPermissionType = (SELECT
      ParameterPermissionType.ParameterPermissionTypeName
    FROM ObjectParameter
      INNER JOIN ParameterPermissionType
        ON ObjectParameter.ParameterPermissionType = ParameterPermissionType.ParameterPermissionTypeID
    WHERE ObjectParameter.ObjectParameterID = objectParameterID);

  IF (parameterTypeID = 13
    OR parameterTypeID = 27
    OR parameterTypeID = 14) THEN

    SET parameterSubObjectName = (SELECT
        Object.ObjectName
      FROM ObjectParameter
        INNER JOIN Object
          ON ObjectParameter.SubObject = Object.ObjectID
      WHERE ObjectParameter.ObjectParameterID = objectParameterID);
    IF (parameterTypeID = 13) THEN
      SET Response = JSON_OBJECT('$ref', CONCAT('#/definitions/', parameterSubObjectName));
    ELSEIF (parameterTypeID = 14) THEN
      SET Response = JSON_OBJECT('type', 'array', 'items', JSON_OBJECT('$ref', CONCAT('#/definitions/', parameterSubObjectName)));

   ELSEIF (parameterTypeID = 27) THEN
      SET Response = JSON_OBJECT('type', 'array', 'items', JSON_OBJECT('type', 'integer'));

    END IF;

    RETURN Response;
  END IF;
  IF (parameterPermissionType <> 'None') THEN
    SET Response = JSON_OBJECT('x-AuthFieldType', parameterPermissionType);
  ELSE
    SET Response = JSON_OBJECT();
  END IF;

  IF (IFNULL(ParameterDescription, '') <> '') THEN
    SET Response = JSON_SET(Response, '$.description', ParameterDescription);
  END IF;


  IF (IFNULL(parameterExample, '') <> '') THEN
    IF (parameterTypeID <> 6) THEN
      SET Response = JSON_SET(Response, '$.example', parameterExample);
    ELSE
      SET Response = JSON_SET(Response, '$.example', JSON_ARRAY(SPLIT_STR(parameterExample, ',', 1), SPLIT_STR(parameterExample, ',', 2)));
    END IF;
  END IF;
  IF (IFNULL(parameterTypePatternRegex, '') <> '') THEN
    SET Response = JSON_SET(Response, '$.pattern', parameterTypePatternRegex);
  END IF;

  IF (IFNULL(patternTypeFormat, '') <> '') THEN
    SET Response = JSON_SET(Response, '$.format', patternTypeFormat);
  END IF;
  IF (IFNULL(parameterTypeTag, '') <> '') THEN
    SET Response = JSON_SET(Response, '$.type', parameterTypeTag);
  END IF;


  IF (IFNULL(parameterTypeMin, '') <> ''
    AND parameterTypeTag = 'string') THEN
    SET Response = JSON_SET(Response, '$.minLength', parameterTypeMin);
  END IF;
  IF (IFNULL(parameterTypeMax, '') <> ''
    AND parameterTypeTag = 'string') THEN
    SET Response = JSON_SET(Response, '$.maxLength', parameterTypeMax);
  END IF;

  IF (IFNULL(parameterTypeMin, '') <> ''
    AND parameterTypeTag = 'integer') THEN
    SET Response = JSON_SET(Response, '$.minimum', parameterTypeMin);
  END IF;
  IF (IFNULL(parameterTypeMax, '') <> ''
    AND parameterTypeTag = 'integer') THEN
    SET Response = JSON_SET(Response, '$.maximum', parameterTypeMax);
  END IF;
  IF (parameterTypeID = 6) THEN
    SET Response = JSON_SET(Response, '$.items', JSON_OBJECT('type', 'string'));
  END IF;

  RETURN Response;


END;

create function FN_GetSwagger (Version varchar(8)) returns json 
BEGIN
  DECLARE Info json;
  DECLARE Response json;
  SET Response = (SELECT
      JSON_SET(Version.SwaggerTemplate,
      '$.info.version', CAST(Version.VersionNumber AS char),
      '$.info.title', Version.InfoTitle,
      '$.info.description', Version.InfoDescription
      )
    FROM Version);
  IF (JSON_VALID(Response) = 0
    AND ISNULL(Response) = 0) THEN
    SET Response = '{"host": "api.officering.com", "info": {"title": "", "contact": {}, "version": "", "description": "Version.SwaggerTemplate Not Found", "termsOfService": ""}, "paths": {}, "schemes": ["https"], "swagger": "2.0", "basePath": "/v1", "consumes": ["application/json"], "produces": ["application/json"], "definitions": {}, "securityDefinitions": {}}';
  END IF;

  SET Response = JSON_SET(Response,
  '$.definitions', FN_GetSwaggerObjects(Version),
  '$.paths', FN_GetSwaggerPaths(Version)
  );


  RETURN Response;


END;

create function FN_GetSwaggerMethodsProperties (MethodID int) returns json 
BEGIN
  DECLARE Response json;

  SET Response = (SELECT
      JSON_ARRAYAGG(FN_GetMethodParameterInfo(MethodParameter.MethodParameterID))
    FROM MethodParameter
      INNER JOIN ParameterType
        ON MethodParameter.ParameterType = ParameterType.ParameterTypeID
    WHERE MethodParameter.MethodID = MethodID
    AND (MethodParameter.MethodParameterPlace < 3
    OR MethodParameter.MethodParameterPlace = 4));

  SET Response = IFNULL(Response, JSON_OBJECT());
  RETURN Response;


END;

create function FN_GetSwaggerObjects (Version varchar(8)) returns json 
BEGIN
  DECLARE Response json;

  SET Response = (SELECT
      JSON_OBJECTAGG(Object.ObjectName, JSON_OBJECT(
      'type', 'object',
      'required', IFNULL((SELECT
          JSON_ARRAYAGG(ObjectParameter.ObjectParameterName)
        FROM ObjectParameter
        WHERE ObjectParameter.ParameterObject = Object.ObjectID
        AND ObjectParameter.Required = TRUE
        ORDER BY ObjectParameter.ObjectParameterOrder), JSON_ARRAY()),
      'properties', FN_GetSwaggerObjectsProperties(Object.ObjectID)
      ))
    FROM Object);

  /*    IF (json_length(Response, '$.required') = 0)
      THEN
        SET Response = JSON_REMOVE(Response, '$.required');
      END IF;*/
  RETURN Response;


END;

create function FN_GetSwaggerObjectsProperties (ObjectID int) returns json 
BEGIN
  DECLARE Response json;

  SET Response = (SELECT
      JSON_OBJECTAGG(ObjectParameterList.ObjectParameterName, FN_GetObjectParamaterInfo(ObjectParameterList.ObjectParameterID))
    FROM (SELECT
        ObjectParameter.ObjectParameterID,
        ObjectParameter.ObjectParameterName,
        ObjectParameter.ObjectParameterOrder
      FROM ObjectParameter
        INNER JOIN ParameterType
          ON ObjectParameter.ParameterType = ParameterType.ParameterTypeID
      WHERE ObjectParameter.ParameterObject = ObjectID
      ORDER BY ObjectParameterOrder) AS ObjectParameterList);

  SET Response = IFNULL(Response, JSON_OBJECT());
  RETURN Response;


END;

create function FN_CheckMethodParameters (data json) returns json
begin
    if (JSON_LENGTH(data, '$.parameters') = 0) then
        set data = JSON_REMOVE(data, '$.parameters');
    end if;

    return data;

end;

create function FN_GetSwaggerPaths (Version varchar(8)) returns json
BEGIN
    DECLARE Response json;

    SET Response = (SELECT
                        JSON_OBJECTAGG(FN_GetMethodPath(Method.MethodID), JSON_OBJECT(MethodType.MethodTypeName, FN_CheckMethodParameters(JSON_OBJECT(
                                'parameters', FN_GetSwaggerMethodsProperties(Method.MethodID),
                                'x-AuthType', FN_GetMethodAuthType(Method.MethodID),
                                'operationId', CONCAT(Service.ServiceName, Method.MethodName),
                                'tags', JSON_ARRAY(Service.ServiceName),
                                'responses', FN_GetMethodResponse(Method.MethodID)
                            ))))
                    FROM Method
                             INNER JOIN Service
                                        ON Method.ServiceID = Service.ServiceID
                             INNER JOIN MethodType ON Method.MethodType =MethodType.MethodTypeID);

    RETURN Response;


END;

create function SPLIT_STR (x varchar(255), delim varchar(12), pos int) returns varchar(255) 
RETURN REPLACE(SUBSTRING(SUBSTRING_INDEX(x, delim, pos),
       LENGTH(SUBSTRING_INDEX(x, delim, pos -1)) + 1),
       delim, '');

