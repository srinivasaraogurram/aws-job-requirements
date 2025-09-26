# API Gateway Interview Questions

## 1. What is Amazon API Gateway?
**Answer:**
Amazon API Gateway is a fully managed service that enables developers to create, publish, maintain, monitor, and secure APIs at any scale.

**Example:**
- Create RESTful APIs to expose Lambda functions.
- Create WebSocket APIs for real-time communication.

## 2. How does API Gateway integrate with AWS Lambda?
**Answer:**
API Gateway can trigger Lambda functions in response to HTTP requests, enabling serverless API backends.

**Example:**
- Define a resource and method in API Gateway, set Lambda as the integration target.

## 3. What are stages in API Gateway?
**Answer:**
Stages are named environments (e.g., dev, test, prod) where you can deploy your API and manage different configurations.

**Example:**
- Deploy API to a 'prod' stage for production use.

## 4. How do you secure APIs in API Gateway?
**Answer:**
You can secure APIs using API keys, IAM roles, Lambda authorizers, or Amazon Cognito user pools.

**Example:**
- Use Lambda authorizer to validate JWT tokens.

## 5. How do you monitor and log API Gateway requests?
**Answer:**
Enable CloudWatch logging and metrics to monitor API usage, errors, and performance.

**Example:**
- View API Gateway logs in CloudWatch Logs.
- Set up CloudWatch metrics for request count and latency.
