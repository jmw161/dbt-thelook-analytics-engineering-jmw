# dbt-thelook-analytics-engineering-jmw
AE sandbox using dbt + BigQuery on theLook ecommerce public dataset

This repo is a portfolio project to practice analytics engineering workflows using:
- Google Big Query
- dbt

## What's coming
- Source definitions/yml file
- Basic dbt tests

## Dataset
- source: `bigquery-public-data.thelook_ecommerce`

## Current Status:
- Created a dedicated GCP project (no-org so I could create service account keys) for learning and dbt integration
- Enabled BigQuery and created datasets in the US multi-region
- Added theLook ecommerce public dataset
- Created a dbt service account & configured IAM in BigQuery: project level roles for running jobs & dataset-level permissions for writing dbt models (tables/views)
- Configured dbt Cloud Big Query connection & successfully passed the connection test

## Coming Soon:
- Define sources (.yml)
- Build staging models
- Build first fact model
- Add tests
