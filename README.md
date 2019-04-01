# MySwaggerHub
SQL Swagger Struct management full implementation  with multi version management , Be the king of your Swagger kingdom .... 


for most updated mysql scheme and defaults, and run the .sql file in the server.
than define the data in the tables.
suggested order: services → objects+object parameters → methods.
only red tables are commonly edited. white tables are defaults.

## Setup

Set environment variables:
```bash
export MYSQL_HOST=<host url>
export MYSQL_USER=<user>
export MYSQL_PASSWORD=<password>
export DB_NAME=<database name>
``` 

## Usage

### Run all
To follow our recommendations for the base data:
```bash
./run.sh
```

### Run selectively 
You can also choose which table you want to populate with data and which not

Run init scripts to create the tables:
```bash
./init_base.sh
./init_bl.sh
```

Dump the base data into the base tables:
```bash
./dump_base_data.sql
``` 

## Demo BL Data
To populate the BL tables with demo data:
```bash
./dump_demo_bl_data.sh
```