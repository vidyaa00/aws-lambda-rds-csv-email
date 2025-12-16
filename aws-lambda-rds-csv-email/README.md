# AWS Lambda CSV Email Project

## Overview
This project implements a serverless architecture where AWS Lambda connects
to an Amazon RDS PostgreSQL database, generates a CSV report using relational
data, and emails the report as an attachment using Amazon SES.

## Services Used
- AWS Lambda
- Amazon RDS (PostgreSQL)
- Amazon SES
- AWS IAM

## Architecture
![Architecture](architecture/architecture-diagram.png)

## Database Tables
- sys_state
- opt_party
- opt_address

## Lambda Workflow
1. Connects to PostgreSQL using pg8000
2. Executes SQL JOIN queries
3. Generates CSV with timestamp
4. Sends CSV as email attachment

## Security
- IAM roles follow least privilege
- No credentials stored in code

## Future Enhancements
- API Gateway trigger
- Scheduled execution
- S3 integration

## Author
G.Srividya

