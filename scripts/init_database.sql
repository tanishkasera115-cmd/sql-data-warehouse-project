/*

Create Database and Schemas

Script Purpose:
This script creates a new database named 'DataWarehouse' after checking if it already exists.
If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
within the database: 'bronze', 'silver', and 'gold'.

WARNING:

Running this script will drop the entire 'DataWarehouse' database if it exists.
All data in the database will be permanently deleted. Proceed with caution
and ensure you have proper backups before running this script.

*/


use master ;
GO
-- Drop and recreate the datawarehouse database 
if exists (SELECT 1 from sys.databases where name='DataWarehouse')
begin
  Alter Database DataWare
	create database DataWarehouse set single_user with rollback immediate ;
  Drop database DataWarehouse;
END;
  GO

use DataWarehouse
    GO
    
-- Create Schemas 
	CREATE SCHEMA bronze;
	go
	CREATE SCHEMA silver;
	go
	CREATE SCHEMA gold ;
