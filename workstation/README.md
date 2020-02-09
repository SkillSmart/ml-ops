Define and set up a workstation environment on the cloud for ML Engineering purposes. 
Environment will be defined to be set up on both AWS and Google Cloud and have integrations into both systems
from a given account id. 

Tasks to be enabled on the workstation:

* Download datasets from public repositories for training
* Define data cleaning operations on the raw data and store it to a data sink for further processing
* Define data schemata for the data to adhere to after data cleaning and run these validation tests automatically
* Set up and automatically execute data transformation pipelines 
* Ingest transformed data into high performance data storage for downstream analytics
* Store metadata on data transformation processes in SQL Database
* Enable ad-hoc integrated dev environment based on Jupyter Hub with enabled access to all systems
* Provide integrated monitoring and logging functionality across both AWS and GCP environments to monitor system runtimes during training and production


Architecture:

* DataLake System to allow ingest and storage of unstructured data sources
* Storage of large public structured datasets using avron files in blob storage for SQL analysis (Athena,...)
* Feature Store in SQL Database as sink for structured ETL pipelines in the dev environment
* Table of transformation functions stored in SQL Database to automatically generate deployment in serverless environment (AWS/GCP) for transformation of incoming unstructured datasources triggered on arrival in data lake
* Stream processing pipeline for EL / ETL processes on real-time enabled datasources (Twitter, ...)
 
