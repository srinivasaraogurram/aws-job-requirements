# SQS Tutorial & Hands-On Practice

## 1. Introduction to SQS
Amazon SQS is a fully managed message queuing service for decoupling and scaling microservices and distributed systems.

---

## 2. Creating a Queue
- Go to SQS Console and create a Standard or FIFO queue.

---

## 3. Sending and Receiving Messages
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
**Explanation:**
- Sends a message to the queue.

---

## 4. Handling Dead-Letter Queues
- Configure a DLQ for failed message processing.
- Set redrive policy in queue settings.

---

## 5. Integrating SQS with Lambda
- Set up Lambda triggers for SQS queues to process messages automatically.

---

## Practice Exercise
1. Create a queue and send messages.
2. Receive and process messages in Node.js.
3. Set up a DLQ and test error handling.
4. Integrate SQS with Lambda for event-driven processing.

Try these steps in AWS Console and with the AWS SDK for hands-on practice!
