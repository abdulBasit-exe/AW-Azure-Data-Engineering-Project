# 🛠️ End-to-End Data Engineering Pipeline with ADF, Databricks, and Synapse
  
  ![image](https://github.com/user-attachments/assets/16c5a502-0c5e-43d4-81d3-bb98e9ad5ef2)

## 📌 Project Overview

This project demonstrates a complete **Modern Data Engineering Workflow on Azure** — from ingesting raw data to transforming and analyzing it in a structured, scalable way using best practices and multiple Azure services.

The goal was to understand the **Bronze-Silver-Gold data lake architecture**, practice dynamic ingestion pipelines, explore PySpark transformations, and query structured data using Synapse SQL for downstream reporting.

---

## 🚀 Workflow Summary

1. **Data Ingestion with Azure Data Factory (ADF)**
   - Ingested data from **GitHub repositories via HTTP** into **ADLS Gen2 (Silver Layer)**.
   - Used **dynamic datasets with parameters**, along with `Lookup` and `ForEach` activities to loop through multiple files.

2. **Data Transformation with Azure Databricks**
   - Connected **Databricks to ADLS Gen2** using **IAM credentials**.
   - Loaded ingested Parquet files into **PySpark DataFrames**.
   - Applied meaningful **PySpark transformations** to clean, enrich, and restructure the data.
   - Wrote the transformed data back to **ADLS Gen2 (Silver Layer)**.
   - Performed exploratory **visual analysis** on the Sales data within Databricks Notebooks.

3. **Data Querying with Azure Synapse Analytics**
   - Connected to the transformed data in ADLS using **Synapse Serverless SQL**.
   - Created **SQL views** in a `gold` schema for all tables.
   - Made the cleaned and modeled data **readily available for reporting and dashboarding**.

4. **Visualization (Optional)**
   - Intended to build dashboards in **Power BI**, but due to Linux (Ubuntu) setup, Power BI Desktop was unavailable.
   - Can later integrate Power BI Web or use alternatives like Apache Superset or Metabase.

---

## 🔧 Technologies & Tools

- **Azure Data Factory (ADF)**
- **Azure Databricks**
- **Azure Data Lake Storage Gen2 (ADLS Gen2)**
- **Azure Synapse Analytics (Serverless SQL Pool)**
- **Apache Spark (PySpark)**

---

## 🧠 What I Learned

- Building **dynamic ADF pipelines** using parameters and control flow activities (`ForEach`, `Lookup`)
- Connecting **Databricks with ADLS Gen2** securely via **IAM Roles**
- Performing efficient **data transformations with PySpark**
- Writing transformed data back to the lake in Parquet format
- Creating **Synapse SQL views over external data**
- Understanding the **Bronze → Silver → Gold architecture**
- Preparing the data for consumption in BI tools like Power BI

---

## 📁 Project Screenshots
### Resource Group
![resource-group](https://github.com/user-attachments/assets/450e6ca5-770a-40cc-9d72-694bdcdd79e4)

### Azure Data Factory (ADF)
![resource-group](https://github.com/user-attachments/assets/82bfd92a-ccc9-4142-bde3-b67159a49852)

### ADLS Gen2 (Silver Layer)
![silver-layer](https://github.com/user-attachments/assets/40113f61-36ad-49fa-906a-518780df13bc)

### Azure Databricks
![databricks](https://github.com/user-attachments/assets/feddfaeb-d986-43ae-b817-1eccccef5339)

### Writing Data
![writing-data](https://github.com/user-attachments/assets/e568eee2-5f0e-4e23-a63b-e1b9b0187c8f)

### Databricks Visualization
![visualization](https://github.com/user-attachments/assets/0af9befd-f628-4c22-968f-bfb7a403c21d)

### Insights
![insight1](https://github.com/user-attachments/assets/ec197194-dcf5-46d8-9c65-c2d2fe9ec92d)
![insights2](https://github.com/user-attachments/assets/9cb7687e-ce79-4cf2-81cb-5bacce3b222f)
![insights3](https://github.com/user-attachments/assets/e75b19f6-3dc0-496c-a5d3-8ae2ed0c92e0)


### Azure Synapse Analytics
![synapse](https://github.com/user-attachments/assets/1882f187-e29e-4547-8367-c31665d14123)

