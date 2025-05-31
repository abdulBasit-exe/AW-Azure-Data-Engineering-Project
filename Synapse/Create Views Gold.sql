-- CREATE VIEW gold.calender
-- as 
-- SELECT
--     * 
-- FROM
--     OPENROWSET(
--         BULK 'https://awdataprojectbasit.dfs.core.windows.net/silver/Calender/',
--         FORMAT='PARQUET'
--     ) as query1

CREATE VIEW gold.customers AS 
SELECT * 
FROM OPENROWSET(
    BULK 'https://awdataprojectbasit.dfs.core.windows.net/silver/Customers/',
    FORMAT='PARQUET'
) AS query2;

-- Create view for product-categories
CREATE VIEW gold.[product-categories] AS 
SELECT * 
FROM OPENROWSET(
    BULK 'https://awdataprojectbasit.dfs.core.windows.net/silver/product-categories/',
    FORMAT='PARQUET'
) AS query1;

-- Create view for product-subcategories
CREATE VIEW gold.[product-subcategories] AS 
SELECT * 
FROM OPENROWSET(
    BULK 'https://awdataprojectbasit.dfs.core.windows.net/silver/product-subcategories/',
    FORMAT='PARQUET'
) AS query1;

-- Create view for products
CREATE VIEW gold.products AS 
SELECT * 
FROM OPENROWSET(
    BULK 'https://awdataprojectbasit.dfs.core.windows.net/silver/products/',
    FORMAT='PARQUET'
) AS query1;

-- Create view for returns
CREATE VIEW gold.returns AS 
SELECT * 
FROM OPENROWSET(
    BULK 'https://awdataprojectbasit.dfs.core.windows.net/silver/returns/',
    FORMAT='PARQUET'
) AS query1;

-- Create view for sales (with multiple Parquet files)
CREATE VIEW gold.sales AS 
SELECT * 
FROM OPENROWSET(
    BULK 'https://awdataprojectbasit.dfs.core.windows.net/silver/sales/',
    FORMAT='PARQUET'
) AS query1;

-- Create view for territories
CREATE VIEW gold.territories AS 
SELECT * 
FROM OPENROWSET(
    BULK 'https://awdataprojectbasit.dfs.core.windows.net/silver/territories/',
    FORMAT='PARQUET'
) AS query1;