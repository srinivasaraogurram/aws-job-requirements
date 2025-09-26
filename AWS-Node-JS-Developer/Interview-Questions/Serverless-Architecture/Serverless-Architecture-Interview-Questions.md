# Serverless Architecture Interview Questions

## 1. What is serverless architecture?
**Answer:**
Serverless architecture allows you to build and run applications without managing servers. Resources are provisioned automatically, and you pay only for usage.

**Example:**
- AWS Lambda + API Gateway for a REST API backend.

## 2. What are the benefits of serverless architecture?
**Answer:**
- No server management
- Automatic scaling
- Cost efficiency
- Faster development

## 3. What are common use cases for serverless?
**Answer:**
- REST APIs
- Event-driven processing
- Scheduled tasks
- Data transformation

## 4. How do you handle state in serverless applications?
**Answer:**
State is managed externally using databases (e.g., DynamoDB, Aurora), S3, or other persistent storage.

## 5. What are the challenges of serverless architecture?
**Answer:**
- Cold starts
- Limited execution time
- Monitoring and debugging
- Vendor lock-in
