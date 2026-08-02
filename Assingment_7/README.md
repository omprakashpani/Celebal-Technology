# Delta Lake Incremental Processing Assignment

## Objective
Perform incremental data processing using Delta Lake using Apache Spark and Databricks.

## Steps Performed

1. Loaded the Superstore dataset into Spark.
2. Renamed columns to remove spaces and special characters.
3. Cleaned the data by removing duplicates and null values.
4. Stored the cleaned dataset as a Delta table (`customer_master`).
5. Created an incremental dataset containing:
   - Updated existing records
   - New records
6. Saved the incremental dataset as another Delta table (`customer_incremental`).
7. Performed a Delta MERGE operation:
   - Updated matching records
   - Inserted new records
8. Validated the results by checking:
   - Total row count
   - Duplicate Order IDs
   - Updated and inserted records

## Technologies Used

- Databricks
- Apache Spark (PySpark)
- Delta Lake

## Output

The final Delta table contains both updated and newly inserted records after the MERGE operation.
