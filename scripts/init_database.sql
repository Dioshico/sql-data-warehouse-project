
/*
============================================================
Create Database and Schemas
============================================================

Script Purpose:
	This script create a new database named 'Datawarehouse' after checking if it is already exists.
	If the databse is already exists, it dropped and recreated. Additionally, the script sets up three schemas
	within the database: 'bronze', 'silver' and 'gold'.
	
WARNING: 
    Running this script will drop the entire 'Datawarehouse' database if it exists.
	All data in the database will be permenently deleted. Proceed with caution and
	ensure you have a proper backups before running this script.
	
*/

USE master;
GO

-- Drop and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 from sys.databases where name='Datawarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END 
GO 
--Create the 'Datawarehouse' database
CREATE DATABASE Datawarehouse;
GO

USE DataWarehouse;
GO

-- Create schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
