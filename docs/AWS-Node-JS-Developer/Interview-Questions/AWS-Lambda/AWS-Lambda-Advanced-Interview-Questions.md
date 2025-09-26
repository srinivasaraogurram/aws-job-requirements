# Advanced AWS Lambda Interview Questions

## 1. How do you optimize cold start performance in AWS Lambda?
**Answer:**
- Use smaller deployment packages
- Choose lighter runtimes (e.g., Node.js, Python)
- Use provisioned concurrency

## 2. How do you handle Lambda timeouts and retries?
**Answer:**
Configure timeout and retry settings in the Lambda function and the triggering service (e.g., API Gateway, SQS).

**Example:**
- Set `timeout` property in Lambda configuration
- Use Dead Letter Queues (DLQ) for failed invocations

## 3. How do you share code and dependencies across multiple Lambda functions?
**Answer:**
Use Lambda Layers to share libraries and code between functions.

**Example:**
- Create a Lambda Layer with shared code
- Reference the Layer in multiple Lambda functions

## 4. How do you secure sensitive data in Lambda?
**Answer:**
Use AWS Secrets Manager or Parameter Store to store and retrieve secrets securely.

**Example:**
- Retrieve secrets using AWS SDK in Lambda code

## 5. How do you monitor and trace Lambda invocations?
**Answer:**
Use AWS X-Ray for distributed tracing and CloudWatch for logs and metrics.

**Example:**
- Enable X-Ray tracing in Lambda configuration
- View traces in AWS X-Ray console
