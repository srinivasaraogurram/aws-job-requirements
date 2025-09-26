# SQS Interview Questions

## 1. What is Amazon SQS?
**Answer:**
Amazon Simple Queue Service (SQS) is a fully managed message queuing service that enables decoupling and scaling of microservices, distributed systems, and serverless applications.

**Example:**
- Use SQS to queue messages between producers and consumers.

## 2. What are the types of SQS queues?
**Answer:**
- Standard Queue: High throughput, at-least-once delivery
- FIFO Queue: Preserves order, exactly-once processing

## 3. How do you send and receive messages in SQS?
**Answer:**
You use AWS SDK methods like `sendMessage` and `receiveMessage`.

**Example (Node.js):**
```javascript
const AWS = require('aws-sdk');
const sqs = new AWS.SQS();

const params = {
  QueueUrl: 'your-queue-url',
  MessageBody: 'Hello SQS!'
};

sqs.sendMessage(params, (err, data) => {
  if (err) console.error(err);
  else console.log('Message sent:', data.MessageId);
});
```

## 4. What is message visibility timeout?
**Answer:**
It is the period during which a received message is hidden from other consumers while being processed.

## 5. How do you handle dead-letter queues in SQS?
**Answer:**
Dead-letter queues store messages that can't be processed successfully after a specified number of attempts, helping with error handling and debugging.
