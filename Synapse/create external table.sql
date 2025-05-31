CREATE DATABASE SCOPED CREDENTIAL cred_basit
WITH 
    IDENTITY = 'Managed Identity'



CREATE EXTERNAL DATA SOURCE source_silver 
with
(
    LOCATION = 'https://awdataprojectbasit.dfs.core.windows.net/silver',
    CREDENTIAL = cred_basit
)


CREATE EXTERNAL DATA SOURCE source_gold 
with
(
    LOCATION = 'https://awdataprojectbasit.dfs.core.windows.net/gold',
    CREDENTIAL = cred_basit
)


CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
 as SELECT * from gold.sales;


SELECT * from gold.extsales order by OrderDate desc;











