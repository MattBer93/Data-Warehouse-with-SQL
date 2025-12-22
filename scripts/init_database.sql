/*
=====================
Create DB and Schema
=====================
Create a new DB 'DataWareHosue' after checking if it already exists. If it exists, the DB is dropped and recreated.
Afterwards, create 3 schemas: bronze, slver, gold.

WARNING: Since the script drops whole DB, proceed with caution
*/

USE master;

-- Drop and recreate the DataWareHouse DB
IF EXISTS SELECT 1 FROM sys.databases WHERE name = 'DataWareHouse'
BEGIN
	ALTER DATABASE DataWareHouse 
		SET SINGLE_USER -- Obtain exclusive access
		WITH ROLLBACK IMMEDIATE; -- Roll back all incomplete transactions and disconnect any other connections to the database
	DROP DATABASE DataWareHouse;
END;
GO


-- Create 'DataWareHouse' DB
CREATE DATABASE DataWareHouse;
USE DataWareHouse; 
GO

-- Create Schemas and find them in "security"
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
