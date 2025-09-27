/*
====================================================================
Creating Data Base and SCHEMA

Purpose:
This script will create a new database called DataWarehouse after checking if it already exists. If exissts, it is dropped and recreated.
Additionally, it will create 3 schemas within the database:bronze, "silver" and "gold".

Warning:
Running this script will delete the existing database and all its data. 
Make sure to take a backup before executing. 
Hence proceed with caution!
====================================================================

*/
use master;

IF EXISTS(SELECT 1 FROM sys.databases WHERE name = "DataWarehouse")
BEGIN
ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE "DataWarehouse";
END;

GO

CREATE DATABASE DataWarehouse;

GO

USE DataWarehouse;

GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
