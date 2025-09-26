# Node.js Tutorial & Hands-On Practice

## 1. Introduction to Node.js
Node.js is a runtime environment for executing JavaScript on the server side. It is event-driven and non-blocking, making it ideal for scalable applications.

---

## 2. Creating a Simple HTTP Server
```javascript
const http = require('http');
const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Hello, World!');
});
server.listen(3000, () => {
  console.log('Server running on port 3000');
});
```
**Explanation:**
- Sets up a basic web server.

---

## 3. Asynchronous Operations Tutorial
```javascript
console.log('Start');
setTimeout(() => {
  console.log('Timeout');
}, 0);
console.log('End');
```
**Explanation:**
- Demonstrates the event loop and async behavior.

---

## 4. Using Promises and async/await
```javascript
const fs = require('fs').promises;
async function readFile() {
  const data = await fs.readFile('example.txt', 'utf8');
  console.log(data);
}
readFile();
```
**Explanation:**
- Reads a file asynchronously using promises.

---

## 5. Streams Tutorial
```javascript
const fs = require('fs');
const readStream = fs.createReadStream('example.txt');
readStream.on('data', chunk => {
  console.log('Received:', chunk);
});
```
**Explanation:**
- Streams handle large data efficiently.

---

## Practice Exercise
1. Create a REST API using Express.js.
2. Read and write files asynchronously.
3. Use streams to process large files.
4. Handle errors using try/catch and event listeners.

Try these examples in a Node.js environment for hands-on learning!
