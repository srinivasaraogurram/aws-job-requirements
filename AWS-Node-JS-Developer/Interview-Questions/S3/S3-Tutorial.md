# S3 Tutorial & Hands-On Practice

## 1. Introduction to S3
Amazon S3 is an object storage service for storing and retrieving any amount of data.

---

## 2. Creating a Bucket
- Go to S3 Console and create a new bucket.

---

## 3. Uploading and Downloading Objects
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
**Explanation:**
- Uploads and downloads files using AWS SDK.

---

## 4. Securing Data in S3
- Use bucket policies and IAM roles.
- Enable encryption for sensitive data.

---

## 5. Hosting a Static Website
- Enable static website hosting in bucket properties.
- Upload HTML, CSS, and JS files.

---

## Practice Exercise
1. Create a bucket and upload files.
2. Download and read files from S3.
3. Set up bucket policies for security.
4. Host a static website on S3.

Try these steps in AWS Console and with the AWS SDK for hands-on practice!
