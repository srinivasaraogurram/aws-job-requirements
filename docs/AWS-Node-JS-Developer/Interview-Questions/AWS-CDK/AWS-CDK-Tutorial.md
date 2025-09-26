# AWS CDK Tutorial & Hands-On Practice

## 1. Introduction to AWS CDK
AWS CDK lets you define cloud infrastructure using code (TypeScript, Python, etc.) and deploy it via CloudFormation.

---

## 2. Setting Up a CDK Project
```bash
mkdir my-cdk-app
cd my-cdk-app
cdk init app --language typescript
```
**Explanation:**
- Initializes a new CDK project.

---

## 3. Defining Resources
```typescript
import * as cdk from 'aws-cdk-lib';
import * as s3 from 'aws-cdk-lib/aws-s3';

const bucket = new s3.Bucket(this, 'MyBucket');
```
**Explanation:**
- Defines an S3 bucket in your stack.

---

## 4. Deploying the Stack
```bash
cdk deploy
```
**Explanation:**
- Deploys resources to AWS.

---

## 5. Using Constructs
- Create reusable components by extending the `Construct` class.

---

## Practice Exercise
1. Initialize a CDK project.
2. Define a Lambda function and an S3 bucket.
3. Deploy your stack to AWS.
4. Create a custom construct for a reusable resource.

Try these steps in your local environment and AWS Console for hands-on practice!
