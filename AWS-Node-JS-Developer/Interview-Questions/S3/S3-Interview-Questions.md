# S3 Interview Questions

## 1. What is Amazon S3?
**Answer:**
Amazon Simple Storage Service (S3) is an object storage service that offers scalability, data availability, security, and performance.

**Example:**
- Store files, images, backups, and static website assets in S3.

## 2. How do you upload and download objects in S3?
**Answer:**
You use AWS SDK methods like `putObject` and `getObject`.

**Example (Node.js):**
```javascript
const AWS = require('aws-sdk');
const s3 = new AWS.S3();

// Upload
s3.putObject({
  Bucket: 'your-bucket',
  Key: 'file.txt',
  Body: 'Hello S3!'
}, (err, data) => {
  if (err) console.error(err);
  else console.log('File uploaded');
});

// Download
s3.getObject({
  Bucket: 'your-bucket',
  Key: 'file.txt'
}, (err, data) => {
  if (err) console.error(err);
  else console.log('File content:', data.Body.toString());
});
```

## 3. What are S3 storage classes?
**Answer:**
S3 offers different storage classes for various use cases, such as Standard, Intelligent-Tiering, Glacier, and Deep Archive.

## 4. How do you secure data in S3?
**Answer:**
Use bucket policies, IAM roles, and encryption (server-side or client-side) to secure data.

## 5. How do you host a static website on S3?
**Answer:**
Enable static website hosting in the S3 bucket properties and upload your website files.
