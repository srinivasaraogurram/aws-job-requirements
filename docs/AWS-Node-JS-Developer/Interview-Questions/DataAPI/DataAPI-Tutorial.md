# DataAPI (Aurora Serverless) Tutorial & Hands-On Practice

## 1. Introduction to DataAPI
AWS Data API allows you to run SQL statements on Aurora Serverless databases over HTTPS, without managing connections.

---

## 2. Setting Up DataAPI
- Create an Aurora Serverless cluster (MySQL/PostgreSQL).
- Enable Data API in the cluster settings.
- Store database credentials in AWS Secrets Manager.

---

## 3. Executing SQL Statements
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
**Explanation:**
- Runs a SQL query using Data API.

---

## 4. Managing Transactions
- Use `BeginTransaction`, `CommitTransaction`, and `RollbackTransaction` API calls for transaction management.

---

## 5. Securing DataAPI
- Use IAM roles and Secrets Manager for authentication.
- Restrict access with IAM policies.

---

## Practice Exercise
1. Set up an Aurora Serverless cluster and enable Data API.
2. Store credentials in Secrets Manager.
3. Write a Lambda function to query the database using Data API.
4. Implement transaction management in your code.

Try these steps in AWS Console and with the AWS SDK for hands-on practice!
