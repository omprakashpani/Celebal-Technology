# Smart Fraud Detection Pipeline

## PySpark | Spark SQL | Databricks | Delta Lake

## 1. Project Overview

This project implements a scalable data engineering pipeline to identify potentially fraudulent transactions using PySpark, Spark SQL, Databricks, and Delta Lake.

The pipeline follows the Medallion Architecture:

**Bronze → Silver → Gold**

Raw account, transaction, and fraud watchlist data are ingested and stored in the Bronze layer. The Silver layer cleans and enriches the data by handling duplicates, null values, data types, and joining account and transaction information. The Gold layer applies fraud detection logic using the fraud watchlist and classifies transactions as **Fraud** or **Normal**.

The final Gold dataset is used to generate business insights using Spark SQL.

---

## 2. Problem Statement

Financial institutions process large volumes of transactions, making manual fraud detection difficult.

The objective of this project is to build a structured data pipeline that:

- Processes raw transaction data
- Cleans and validates datasets
- Combines account and transaction information
- Identifies transactions associated with known fraudulent accounts
- Classifies transactions as Fraud or Normal
- Generates useful business insights

---

## 3. Objectives

- Process and clean raw transaction data
- Store raw data using Delta Lake
- Join account and transaction datasets
- Identify fraudulent transactions using a fraud watchlist
- Classify transactions as Fraud or Normal
- Calculate fraud and normal transaction counts
- Generate account, branch, transaction, and fraud-related insights
- Export the final dataset for downstream consumption

---

## 4. Datasets

The project uses three CSV datasets.

### Accounts

Contains account-level information.

| Column | Description |
|---|---|
| account_id | Unique account identifier |
| customer_name | Account holder name |
| account_type | Type of account |
| credit_limit | Credit limit associated with account |
| branch | Account branch |
| opening_date | Account opening date |
| kyc_status | KYC verification status |

### Transactions

Contains transaction-level information.

| Column | Description |
|---|---|
| txn_id | Unique transaction identifier |
| account_id | Account associated with transaction |
| txn_date | Transaction date |
| txn_type | Type of transaction |
| amount | Transaction amount |
| merchant | Merchant involved |
| city | Transaction city |
| is_international | Indicates whether transaction is international |

### Fraud Watchlist

Contains accounts that have been flagged for suspected fraud.

| Column | Description |
|---|---|
| account_id | Flagged account identifier |
| fraud_type | Type/category of suspected fraud |
| flagged_date | Date the account was flagged |

---

## 5. Technology Stack

| Technology | Purpose |
|---|---|
| Python | Pipeline scripting |
| PySpark | Distributed data processing |
| Spark SQL | Data analysis and business queries |
| Databricks | Spark development and execution environment |
| Delta Lake | Reliable storage using Delta format |

---

## 6. Architecture

The project follows the Medallion Architecture.

```text
                 CSV Source Files
                       |
                       v
              +------------------+
              |  Bronze Layer    |
              |   Raw Delta      |
              +------------------+
                       |
                       v
              +------------------+
              |  Silver Layer    |
              | Clean + Join +   |
              |     Enrich       |
              +------------------+
                       |
                       v
              +------------------+
              |   Gold Layer     |
              | Fraud Detection  |
              |   + Analytics    |
              +------------------+
                       |
                       v
                Business Insights
                       |
                       v
                  CSV Output
