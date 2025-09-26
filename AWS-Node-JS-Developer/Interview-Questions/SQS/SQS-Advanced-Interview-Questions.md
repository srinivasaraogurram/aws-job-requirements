# Advanced SQS Interview Questions

## 1. How do you ensure exactly-once processing in SQS FIFO queues?
**Answer:**
SQS FIFO queues guarantee message order and exactly-once delivery using message deduplication IDs.

**Example:**
- Set `MessageDeduplicationId` when sending messages

## 2. How do you scale SQS consumers?
**Answer:**
Use multiple consumers and auto-scaling groups to process messages in parallel.

## 3. How do you handle large messages in SQS?
**Answer:**
Store large payloads in S3 and send a reference (S3 object key) in the SQS message.

## 4. How do you integrate SQS with Lambda for event-driven processing?
**Answer:**
Configure Lambda triggers on SQS queues to process messages automatically.

**Example:**
- Set up Lambda trigger in SQS console

## 5. How do you monitor and troubleshoot SQS queues?
**Answer:**
Use CloudWatch metrics and dead-letter queues to monitor message processing and failures.
