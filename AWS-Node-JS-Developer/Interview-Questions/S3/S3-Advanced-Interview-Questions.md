# Advanced S3 Interview Questions

## 1. How do you implement versioning in S3?
**Answer:**
Enable versioning on an S3 bucket to keep multiple versions of an object.

**Example:**
- Enable versioning in bucket properties
- Retrieve object versions using AWS SDK

## 2. How do you set up lifecycle policies in S3?
**Answer:**
Lifecycle policies automate transitions and deletions of objects based on rules.

**Example:**
- Move objects to Glacier after 30 days
- Delete objects after 365 days

## 3. How do you use S3 event notifications?
**Answer:**
Configure S3 to send event notifications to Lambda, SQS, or SNS when objects are created, deleted, etc.

**Example:**
- Set up event notification in bucket properties

## 4. How do you secure S3 buckets against public access?
**Answer:**
Block public access at the bucket and account level, use bucket policies and IAM roles.

## 5. How do you optimize S3 performance for large-scale workloads?
**Answer:**
- Use multipart uploads for large files
- Distribute object keys for better performance
- Enable transfer acceleration
