# AWS Lambda Tutorial & Hands-On Practice

## 1. Introduction to AWS Lambda
AWS Lambda lets you run code without managing servers. You upload your code, set triggers, and AWS handles the rest.

---

## 2. Creating a Simple Lambda Function
```javascript
exports.handler = async (event) => {
  return {
    statusCode: 200,
    body: JSON.stringify('Hello from Lambda!'),
  };
};
```
**Explanation:**
- Basic Lambda handler function.

---

## 3. Triggering Lambda with API Gateway
- Create an API Gateway resource and method.
- Set Lambda as the integration target.
- Test by sending an HTTP request.

---

## 4. Using Lambda Layers
- Package shared code as a Lambda Layer.
- Reference the Layer in your Lambda function configuration.

---

## 5. Monitoring Lambda with CloudWatch
- View logs in CloudWatch Logs.
- Set up CloudWatch Alarms for errors or duration.

---

## Practice Exercise
1. Write a Lambda function that processes S3 events.
2. Set up an API Gateway trigger for your Lambda.
3. Use a Lambda Layer for shared utilities.
4. Monitor your Lambda function in CloudWatch.

Try these steps in AWS Console or with AWS SAM/Serverless Framework for hands-on practice!
