/*
=============================================================
Create Database and Schemas
=============================================================

Purpose:
This script creates a database named 'DataWarehouse'. Before creating it,
the script checks if a database with the same name already exists. If it does,
the existing database is deleted and a new one is created.

After creating the database, it also creates three schemas:
- bronze
- silver
- gold

Note:
Running this script will delete the existing 'DataWarehouse' database along
with all its data. Make sure you have a backup if you want to keep the data.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
