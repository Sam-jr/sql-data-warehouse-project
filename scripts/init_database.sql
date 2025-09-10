/*
==================================================================
Create Dabase Warehouse and Schema
==================================================================
Script Running:
  This script creates a database named "WareHouse" after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script set up three schemas

WARNING:
  Running this script will drop the entire "WareHouse" database if it exists.
  All data in the database will be deleted. Proceed with caution and ensure you have proper backups 
  before running this script.

*/

USE master;
GO

IF EXISTS (SELECT 1 from sys.databases WHERE name = 'WareHouse')
BEGIN
    ALTER DATABASE WareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE
    DROP DATABASE WareHouse; 

    CREATE DATABASE WareHouse;
    GO
    USE WareHouse;

    CREATE SCHEMA bronze;
    GO
    CREATE SCHEMA silver;
    GO
    CREATE SCHEMA gold;
    GO


