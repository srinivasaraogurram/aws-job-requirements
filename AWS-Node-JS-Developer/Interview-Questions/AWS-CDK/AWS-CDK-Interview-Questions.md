# AWS CDK Interview Questions

## 1. What is AWS CDK?
**Answer:**
AWS Cloud Development Kit (CDK) is an open-source software development framework to define cloud infrastructure in code and provision it through AWS CloudFormation.

**Example:**
- Use TypeScript or Python to define AWS resources like Lambda, S3, and API Gateway.

## 2. How do you define a Lambda function using AWS CDK?
**Answer:**
You use the `aws-cdk-lib/aws-lambda` module to define a Lambda function in your CDK stack.

**Example (TypeScript):**
```typescript
import * as cdk from 'aws-cdk-lib';
import * as lambda from 'aws-cdk-lib/aws-lambda';

const fn = new lambda.Function(this, 'MyFunction', {
  runtime: lambda.Runtime.NODEJS_18_X,
  handler: 'index.handler',
  code: lambda.Code.fromAsset('lambda'),
});
```

## 3. What are constructs in AWS CDK?
**Answer:**
Constructs are reusable cloud components defined in code. They can represent a single resource or a collection of resources.

## 4. How do you deploy a CDK stack?
**Answer:**
Use the `cdk deploy` command to deploy your stack to AWS.

**Example:**
```bash
cdk deploy
```

## 5. How do you manage environments in AWS CDK?
**Answer:**
You can define multiple environments (dev, prod) using context variables and stacks.
