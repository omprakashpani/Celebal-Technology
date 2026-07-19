# Apache Spark DataFrame Assignment

## Objective

The objective of this assignment is to learn the basics of Apache Spark by performing data loading, cleaning, filtering, transformation, aggregation, and grouping using Spark DataFrames.

---

## Tools Used

- Python
- PySpark
- Jupyter Notebook / VS Code

---

## Dataset

- Sample - Superstore.csv

---

## Tasks Performed

### 1. Created Spark Session
- Initialized a SparkSession to work with PySpark.

### 2. Loaded Dataset
- Loaded the CSV file into a Spark DataFrame.
- Displayed the first few rows.
- Checked the schema and column names.

### 3. Data Cleaning
- Removed duplicate records.
- Checked for null values.
- Filled missing string values with **"Unknown"**.
- Filled missing numeric values with **0**.

### 4. Data Filtering
Applied filters to:
- Sales greater than 1000
- Category = Furniture
- Region = West

### 5. Data Transformation
- Renamed **Postal Code** to **Postal_Code**.

### 6. Aggregation
Performed:
- Total row count
- Average Sales
- Minimum Sales
- Maximum Sales

### 7. GroupBy Operations
Calculated:
- Total Sales by Category
- Average Profit by Region
- Count of Orders by Segment

### 8. Wide Transformation
- Used `groupBy()` to understand wide transformations and shuffle operations.

### 9. Simple Data Pipeline
Built a simple pipeline that:
- Loaded the dataset
- Removed duplicates
- Handled missing values
- Filtered records
- Performed aggregation

---

## Observations

- Successfully loaded the Superstore dataset into Spark.
- Removed duplicate records.
- Verified and handled missing values.
- Applied filtering on Sales, Category, and Region.
- Performed aggregation using Spark functions.
- Grouped data to generate summarized insights.
- Learned that `groupBy()` is a wide transformation because it performs a shuffle.

---

## Project Structure

```
spark-assignment/
│── data/
│   └── Sample - Superstore.csv
│
│── notebook/
│   └── pyspark.ipynb
│
│── output/
│   └── results.csv
│
└── README.md
```

---

## Conclusion

This assignment helped in understanding the basic concepts of Apache Spark DataFrames, including loading data, cleaning datasets, filtering records, transforming columns, performing aggregations, grouping data, and building a simple data processing pipeline.
