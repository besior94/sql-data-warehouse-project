/*
=====================================================================
Create Database and Schemas
=====================================================================
Script purpose:
  This script creates a new databse named 'DataWarehouse' after checking if it already esists.
  If the database exists, it is dropped and re-created. 
  Additionally, the script sets up three schemas within the database: 'bronze', 'silver', and 'gold'.

WARNING:
  Running this script will drop the entire 'DataWarehouse' database if it exists. 
  All data in the database will be premanently deleted.
  Proceed with caution and ensure you have proper backups before running this scripts.
*/

--Create Database 'DataWarehouse'

USE master;


-- Drop and re-create the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE Database DataWarehouse;
GO

USE DataWarehouse;

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
