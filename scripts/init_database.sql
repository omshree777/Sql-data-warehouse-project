/*
==============================================================================
Create Database and Schemas
==============================================================================
Script purpose:
  This script creates a new database named 'datawarehouse' after checking if it already exists.
If the database exists,it is dropped and recreated.Additionally , the script sets up three schemas within 
the database:'bronze,''silver' and 'gold'.

Warning:
       Running this script will drop the entir 'datawarehouse' database if it exists.
       All the data in the database will be permanently deleted.Proceed with caution and 
      ensure you have proper backups before running the script
*/

USE master;
GO

----Drop and recreate the'datawarehouse' database
IF EXISTS(SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
BEGIN 
      ALTER DATABASE datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
      DROP DATABASE datawarehouse;
END;
GO

---Create the'datawarehouse'database
CREATE DATABASE datawarehouse;
GO

USE datawarehouse;
GO

---create schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
