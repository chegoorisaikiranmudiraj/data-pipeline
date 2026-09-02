<div align="center">

# Retail Sales ETL Pipeline

<br>

<p>
An end-to-end data engineering pipeline built with Python, Google Cloud Storage, Google Colab, BigQuery, SQL, and Looker Studio.
</p>

<br>

<p>
ETL • Data Quality • Cloud Storage • Data Warehouse • SQL Analytics • Dashboarding
</p>

<br>

<p>• • •</p>

<br>

[![Python](https://img.shields.io/badge/Python-3.x-3776AB?logo=python&logoColor=white)](https://www.python.org/)
[![Pandas](https://img.shields.io/badge/Pandas-Data%20Transformation-150458?logo=pandas&logoColor=white)](https://pandas.pydata.org/)
[![Google Cloud](https://img.shields.io/badge/Google%20Cloud-Platform-4285F4?logo=googlecloud&logoColor=white)](https://cloud.google.com/)
[![Google Cloud Storage](https://img.shields.io/badge/GCP-Cloud%20Storage-AECBFA?logo=googlecloud&logoColor=white)](https://cloud.google.com/storage)
[![BigQuery](https://img.shields.io/badge/BigQuery-Data%20Warehouse-669DF6?logo=googlebigquery&logoColor=white)](https://cloud.google.com/bigquery)
[![SQL](https://img.shields.io/badge/SQL-Analytics-336791?logo=postgresql&logoColor=white)](https://www.w3schools.com/sql/)
[![Looker Studio](https://img.shields.io/badge/Looker%20Studio-Dashboarding-4285F4?logo=looker&logoColor=white)](https://lookerstudio.google.com/)
[![GitHub](https://img.shields.io/badge/GitHub-Version%20Control-181717?logo=github&logoColor=white)](https://github.com/)

<br>

*Designed as a portfolio project to demonstrate practical Data Engineering, data quality, cloud storage, SQL analytics, and data visualization skills.*

</div>

---

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Architecture](#architecture)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Running the Pipeline](#running-the-pipeline)
- [Running Tests](#running-tests)
- [Pipeline Workflow](#pipeline-workflow)

---

## Overview

**Retail Sales ETL Pipeline** is a portfolio data engineering project demonstrating an end-to-end workflow for extracting, transforming, and loading retail sales data using Google Cloud and Python.

The pipeline covers the following journey:

1. Upload raw retail sales data from a local system to Google Cloud Storage.
2. Extract the CSV file from Google Cloud Storage into Google Colab.
3. Perform data-quality checks and transformations using Python and Pandas.
4. Generate a cleaned, analysis-ready CSV file.
5. Load the processed dataset back into Google Cloud Storage.
6. Load the processed dataset into BigQuery.
7. Perform business analysis using SQL.
8. Build an interactive dashboard using Looker Studio.

The project focuses on practical data-quality handling, cloud-based data storage, SQL analysis, and visualization of business insights.

---

## Features

- **Cloud Data Ingestion**: Upload raw retail sales data to Google Cloud Storage.
- **Data Extraction**: Extract CSV data from GCS into Google Colab.
- **Data Transformation**: Clean and transform data using Python and Pandas.
- **Data Quality**: Handle missing values, duplicates, inconsistent values, and data types.
- **Processed Data Storage**: Save the transformed dataset as a cleaned CSV and upload it back to GCS.
- **BigQuery Loading**: Load the processed dataset into BigQuery for analytical querying.
- **SQL Analysis**: Analyze sales performance, categories, items, customers, revenue, and volume.
- **Looker Studio Dashboard**: Visualize the analytical results through an interactive dashboard.
- **Version Control**: Maintain project code and documentation using Git and GitHub.

---

## Architecture

```mermaid
flowchart LR
    A[(Local CSV)] --> B[(Google Cloud Storage)]
    B --> C[Google Colab / Python]
    C --> D[Data Quality & Transformation]
    D --> E[(Processed CSV)]
    E --> B
    B --> F[(BigQuery)]
    F --> G[SQL Analysis]
    G --> H[PowerBI Dashboard]
