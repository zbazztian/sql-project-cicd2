CREATE PROCEDURE [dbo].[usp_insert_without_column]
AS
begin
    IF Object_Id('dbo.purchase') IS NOT NULL DROP TABLE dbo.Purchase;
    CREATE TABLE Purchase
    (
        SubTotal NUMERIC(19, 4) NOT NULL,
        TaxAmt NUMERIC(19, 4) NOT NULL,
        Freight NUMERIC(19, 4) NOT NULL,
        total NUMERIC(19, 4) NOT NULL,
        OrderDate DATETIME NOT NULL
    );
    INSERT INTO Purchase
    SELECT TOP 10 SubTotal, TaxAmt, Freight,
        SubTotal + TaxAmt + Freight AS total, OrderDate
    FROM AdventureWorks2016.Sales.SalesOrderHeader;

    insert into userinfo(Id,Name,NickName,RegTime)
    values(1,'a','b',getdate())
 end
