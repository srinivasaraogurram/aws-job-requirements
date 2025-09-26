# DataAPI (Aurora Serverless) Interview Questions

## 1. What is AWS Data API for Aurora Serverless?
**Answer:**
AWS Data API is a RESTful API that allows you to run SQL statements on Aurora Serverless databases (MySQL/PostgreSQL) over HTTPS, without managing database connections or drivers.

**Example:**
- Run SQL queries from Lambda using Data API.

## 2. How do you authenticate requests to the Data API?
**Answer:**
Authentication is handled via AWS IAM and Secrets Manager. You pass a secret ARN and use IAM roles to authorize access.

**Example:**
- Use AWS SDK to call Data API with secret ARN and resource ARN.

## 3. What are common use cases for Data API?
**Answer:**
- Serverless applications (Lambda, API Gateway) needing database access
- Stateless, scalable architectures

## 4. How do you execute a SQL statement using Data API?
**Answer:**
You use the AWS SDK (`rds-data` client) to call `ExecuteStatement` or `BatchExecuteStatement`.

**Example (Node.js):**
```javascript
const AWS = require('aws-sdk');
const rdsData = new AWS.RDSDataService();

const params = {
  resourceArn: 'your-db-cluster-arn',
  secretArn: 'your-secret-arn',
  sql: 'SELECT * FROM users;',
  database: 'your-db-name'
};

rdsData.executeStatement(params, (err, data) => {
  if (err) console.error(err);
  else console.log(data);
});
```

## 5. What are the limitations of Data API?
**Answer:**
- Only supports Aurora Serverless (MySQL/PostgreSQL)
- May have latency compared to direct connections
- Limited transaction support
