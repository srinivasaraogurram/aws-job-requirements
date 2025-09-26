# AWS Lambda Interview Questions

## 1. What is AWS Lambda?
**Answer:**
AWS Lambda is a serverless compute service that lets you run code without provisioning or managing servers. You pay only for the compute time you consume.

**Example:**
```javascript
exports.handler = async (event) => {
  return {
    statusCode: 200,
    body: JSON.stringify('Hello from Lambda!'),
  };
};
```

## 2. How do you trigger a Lambda function?
**Answer:**
Lambda functions can be triggered by AWS services such as API Gateway, S3, DynamoDB, SQS, or directly via the AWS Console or SDK.

**Example:**
- API Gateway triggers Lambda to handle HTTP requests.
- S3 triggers Lambda on object creation events.

## 3. What are Lambda execution roles?
**Answer:**
Execution roles are IAM roles that grant your Lambda function permissions to access other AWS services and resources.

**Example:**
- Allow Lambda to read from S3 or write to DynamoDB by attaching the appropriate IAM policy.

## 4. How do you manage dependencies in Lambda?
**Answer:**
You package your code and dependencies together, or use Lambda Layers to share common libraries across functions.

**Example:**
- Create a `node_modules` folder and zip it with your Lambda code.
- Use Lambda Layers for shared libraries.

## 5. How do you monitor Lambda functions?
**Answer:**
Use AWS CloudWatch to monitor logs, metrics, and set up alarms for Lambda functions.

**Example:**
- View logs in CloudWatch Logs.
- Set up CloudWatch Alarms for error rates or duration.
