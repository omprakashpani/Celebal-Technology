# End-to-End Data Pipeline using Apache Airflow and MinIO
### (Azure Data Factory Equivalent Implementation)

## Project Overview

This project demonstrates the implementation of an end-to-end data pipeline using **Apache Airflow** and **MinIO**.

The original assignment required the use of **Microsoft Azure**, specifically Azure Blob Storage and Azure Data Factory (ADF). However, I was unable to obtain access to an Azure subscription despite the assignment requiring Azure resources. To continue learning and understand the underlying concepts, I implemented the same workflow locally using open-source technologies.

This implementation focuses on the core concepts of data engineering, including workflow orchestration, metadata validation, and automated data movement.

---

## Assignment Objective

Understand Azure cloud concepts and build an end-to-end data pipeline involving:

- Storage Account
- Blob Container
- Azure Data Factory
- Linked Services
- Get Metadata Activity
- Copy Data Activity
- Pipeline Execution

Since Azure resources were unavailable, these concepts were implemented using equivalent open-source tools.

---

# Note

> **This project is not an Azure implementation.**
>
> Due to the unavailability of an Azure subscription, I was unable to complete the assignment using Azure Portal, Azure Blob Storage, or Azure Data Factory.
>
> Instead, I implemented the same pipeline logic using Apache Airflow and MinIO to gain practical understanding of workflow orchestration, metadata validation, and automated data movement.
>
> If Azure access becomes available, the same workflow can be recreated using Azure Data Factory with minimal changes.

---

# Technologies Used

- Apache Airflow
- MinIO
- Docker
- Python

---

# Azure Service Mapping

| Assignment Requirement | Azure Service | Local Implementation |
|------------------------|--------------|----------------------|
| Object Storage | Azure Blob Storage | MinIO |
| Data Pipeline | Azure Data Factory | Apache Airflow |
| Pipeline | ADF Pipeline | Airflow DAG |
| Get Metadata | Get Metadata Activity | `get_metadata()` |
| Copy Data | Copy Data Activity | `copy_file()` |
| Source Dataset | Blob Dataset | `sales/source/Sample - Superstore.csv` |
| Destination Dataset | Blob Dataset | `sales/destination/` |

---

# Project Architecture

```
                 Docker Environment

        +--------------------------+
        |         MinIO            |
        |                          |
        | sales/source             |
        +------------+-------------+
                     |
                     |
                     v
        +--------------------------+
        |      Apache Airflow      |
        |                          |
        | check_file()             |
        | get_metadata()           |
        | copy_file()              |
        +------------+-------------+
                     |
                     |
                     v
        +--------------------------+
        | sales/destination        |
        +--------------------------+
```

---

# Pipeline Workflow

```
Source CSV
     │
     ▼
Check File Exists
     │
     ▼
Retrieve File Metadata
     │
     ▼
Copy File
     │
     ▼
Destination Folder
```

---

# Pipeline Tasks

## 1. Check File

- Verifies that the source CSV file exists before processing.
- Prevents downstream failures caused by missing files.

Equivalent Azure Activity:
- Get Metadata (Exists)

---

## 2. Get Metadata

Retrieves metadata about the source file including:

- File Name
- File Size
- Last Modified Timestamp

Equivalent Azure Activity:
- Get Metadata

---

## 3. Copy File

Copies the CSV file from the source folder to the destination folder.

Equivalent Azure Activity:
- Copy Data

---

# Folder Structure

```
ADF-Free-Lab/
│
├── dags/
│   └── minio_pipeline.py
│
├── source/
│   └── Sample - Superstore.csv
│
├── destination/
│
├── screenshots/
│   ├── airflow_dashboard.png
│   ├── airflow_graph.png
│   ├── minio_bucket.png
│   ├── source_file.png
│   └── destination_file.png
│
├── docker-compose.yml
├── architecture.png
├── workflow.png
└── README.md
```

---

# Results

The pipeline successfully performs the following operations:

- Reads the source CSV file
- Validates file existence
- Retrieves file metadata
- Copies the file to the destination folder
- Executes successfully through Apache Airflow

---

# Screenshots

Include the following screenshots:

- Airflow Dashboard
- Airflow Graph View
- MinIO Bucket
- Source Folder
- Destination Folder
- Successful Pipeline Execution

---

# Limitations

The following Azure-specific tasks could not be completed because Azure access was unavailable:

- Creating a Resource Group
- Creating a Storage Account
- Creating Azure Blob Storage
- Creating Azure Data Factory
- Creating Linked Services
- Creating Azure Datasets
- IAM Role Assignments
- Azure Portal Screenshots

These limitations are related only to platform access and not to the workflow logic itself.

---

# Learning Outcomes

Through this project I gained hands-on experience with:

- Workflow orchestration
- Building Airflow DAGs
- Object storage using MinIO
- Metadata validation
- Automated file movement
- Docker containerization
- Data pipeline design

---

# Future Improvements

If Azure access becomes available, the same project can be extended by:

- Implementing the pipeline using Azure Data Factory
- Using Azure Blob Storage instead of MinIO
- Configuring Linked Services and Datasets
- Using Azure IAM for access management
- Scheduling pipelines using Azure Triggers
- Monitoring execution through Azure Monitor

---

# Conclusion

Although Azure resources were unavailable, this project successfully demonstrates the fundamental concepts of a modern data engineering pipeline using Apache Airflow and MinIO.

The implementation mirrors the logical workflow of Azure Data Factory by validating the source data, retrieving metadata, and automating data movement through a structured pipeline.
