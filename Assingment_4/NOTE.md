# Note

## Azure Access Limitation

The original assignment required implementing the solution using Azure Data Factory (ADF).

However, I was unable to obtain access to an Azure subscription or Azure Data Factory workspace during the assignment period.

To demonstrate the same ETL workflow and concepts, I implemented an equivalent solution using:

- Apache Airflow (Workflow Orchestration)
- MinIO (Object Storage)
- Docker (Containerization)
- PostgreSQL (Airflow Metadata Database)

## Mapping to Azure Services

| Local Implementation | Azure Equivalent |
|----------------------|------------------|
| MinIO Bucket | Azure Blob Storage |
| Airflow DAG | Azure Data Factory Pipeline |
| PythonOperator | ADF Activities |
| Docker | Azure Hosted Services |
| Metadata Retrieval | Get Metadata Activity |
| File Copy | Copy Data Activity |

The project demonstrates the same pipeline logic:

1. Verify source file exists.
2. Retrieve file metadata.
3. Copy the file from the source folder to the destination folder.

Although implemented locally, the workflow closely follows Azure Data Factory concepts and architecture.
