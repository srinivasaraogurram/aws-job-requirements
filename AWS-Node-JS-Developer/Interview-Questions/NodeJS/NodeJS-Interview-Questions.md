# Node.js Interview Questions

## 1. What is Node.js and why is it used for backend development?
**Answer:**
Node.js is a runtime environment that allows you to run JavaScript on the server side. It is used for backend development due to its non-blocking, event-driven architecture, which makes it efficient for handling concurrent requests.

**Example:**
```javascript
// Simple HTTP server in Node.js
const http = require('http');

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Hello, World!');
});

server.listen(3000, () => {
  console.log('Server running on port 3000');
});
```

## 2. What is the event loop in Node.js?
**Answer:**
The event loop is the mechanism that handles asynchronous operations in Node.js, allowing non-blocking I/O.

**Example:**
```javascript
console.log('Start');
setTimeout(() => {
  console.log('Timeout');
}, 0);
console.log('End');
// Output: Start, End, Timeout
```

## 3. How do you handle asynchronous operations in Node.js?
**Answer:**
You can use callbacks, promises, or async/await to handle asynchronous operations.

**Example (async/await):**
```javascript
const fs = require('fs').promises;

async function readFile() {
  const data = await fs.readFile('example.txt', 'utf8');
  console.log(data);
}

readFile();
```

## 4. What are streams in Node.js?
**Answer:**
Streams are objects that allow you to read or write data continuously. They are used for handling large files or data transfers efficiently.

**Example:**
```javascript
const fs = require('fs');
const readStream = fs.createReadStream('example.txt');
readStream.on('data', chunk => {
  console.log('Received:', chunk);
});
```

## 5. How do you manage packages in Node.js?
**Answer:**
Node.js uses npm (Node Package Manager) to manage packages and dependencies.

**Example:**
```bash
npm install express
```
