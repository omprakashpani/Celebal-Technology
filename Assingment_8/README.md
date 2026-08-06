# Delta Lake Incremental Processing Assignment

## Overview

This project demonstrates incremental data processing using **Delta Lake** in **Databricks**. The Customer Personality Analysis dataset is used to showcase how Delta Lake efficiently updates existing records and inserts new records using the `MERGE` operation.

## Objective

- Load a dataset into a Delta table.
- Perform basic data cleaning.
- Simulate incremental data.
- Apply the Delta Lake `MERGE` operation.
- Validate the final dataset.

---

## Technologies Used

- Databricks
- Apache Spark (PySpark)
- Delta Lake
- SQL
- Python

---

## Dataset

**Customer Personality Analysis**

The dataset contains customer demographic and financial information such as:

- ID
- Income
- Education
- Marital_Status
- Year_Birth
- Other customer attributes

---

## Project Workflow

### 1. Load Dataset

- Uploaded the Customer Personality Analysis dataset into Databricks.
- Loaded the CSV into a Spark DataFrame.

### 2. Data Cleaning

- Checked for null values.
- Removed duplicate records.
- Filled missing values where required.

### 3. Create Delta Table

- Saved the cleaned dataset in Delta format.
- Loaded the Delta table for further processing.

### 4. Create Incremental Dataset

Created a second dataset containing:

- Existing customer records (for updates)
- New customer records (for inserts)

### 5. Merge Operation

Used Delta Lake SQL `MERGE` statement to:

- Update matching customer records.
- Insert new customer records.

### 6. Validation

Validated the results by:

- Checking total row count.
- Verifying duplicate IDs.
- Displaying updated and newly inserted records.

---

## Project Structure

```
delta-lake-assignment/
│
├── data/
│   ├── customer_master.csv
│   └── customer_incremental.csv
│
├── notebooks/
│   └── delta_lake_assignment.ipynb
│
├── screenshots/
│   ├── dataset_loaded.png
│   ├── schema.png
│   ├── null_check.png
│   ├── cleaned_dataset.png
│   ├── delta_table.png
│   ├── incremental_dataset.png
│   ├── merge_operation.png
│   ├── validation.png
│   └── final_output.png
│
└── README.md
```

---

## Key Concepts Demonstrated

- Spark DataFrames
- Data Cleaning
- Delta Lake
- Incremental Data Processing
- SQL MERGE
- Data Validation

---

## MERGE Logic

```
IF customer exists
    UPDATE record
ELSE
    INSERT new record
```

This ensures that only changed records are updated while new records are inserted, making incremental processing efficient.

---

## Results

- Successfully loaded the dataset into a Delta table.
- Cleaned missing and duplicate data.
- Created an incremental dataset.
- Updated existing customer records using `MERGE`.
- Inserted new customer records.
- Validated the final dataset with row count and duplicate checks.

---

## Author

**Om Prakash Pani**

B.Tech Computer Science Engineering  
ITER, Siksha 'O' Anusandhan University
