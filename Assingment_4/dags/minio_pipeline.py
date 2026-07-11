from airflow import DAG
from airflow.operators.python import PythonOperator
from datetime import datetime
from minio import Minio
from io import BytesIO

# Connect to MinIO
client = Minio(
    "minio:9000",
    access_key="minioadmin",
    secret_key="minioadmin",
    secure=False,
)


# --------------------------
# Task 1 - Check File
# --------------------------
def check_file():
    bucket = "sales"
    object_name = "source/Sample - Superstore.csv"

    client.stat_object(bucket, object_name)
    print("✅ File exists!")


# --------------------------
# Task 2 - Get Metadata
# --------------------------
def get_metadata():
    bucket = "sales"
    object_name = "source/Sample - Superstore.csv"

    stat = client.stat_object(bucket, object_name)

    print("========== FILE METADATA ==========")
    print(f"File Name: {object_name}")
    print(f"Size: {stat.size} bytes")
    print(f"Last Modified: {stat.last_modified}")


# --------------------------
# Task 3 - Copy File
# --------------------------
def copy_file():
    bucket = "sales"

    source_object = "source/Sample - Superstore.csv"
    destination_object = "destination/Sample - Superstore.csv"

    response = client.get_object(bucket, source_object)
    data = response.read()

    response.close()
    response.release_conn()

    client.put_object(
        bucket_name=bucket,
        object_name=destination_object,
        data=BytesIO(data),
        length=len(data),
        content_type="text/csv",
    )

    print("✅ File copied successfully!")


# --------------------------
# Airflow DAG
# --------------------------
with DAG(
    dag_id="minio_pipeline",
    start_date=datetime(2026, 1, 1),
    schedule=None,
    catchup=False,
    tags=["minio"],
) as dag:

    check = PythonOperator(
        task_id="check_file",
        python_callable=check_file,
    )

    metadata = PythonOperator(
        task_id="get_metadata",
        python_callable=get_metadata,
    )

    copy = PythonOperator(
        task_id="copy_file",
        python_callable=copy_file,
    )

    check >> metadata >> copy