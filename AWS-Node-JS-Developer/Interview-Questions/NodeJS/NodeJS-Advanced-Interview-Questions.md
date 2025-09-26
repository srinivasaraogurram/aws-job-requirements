# Advanced Node.js Interview Questions

## 1. What is the difference between process.nextTick(), setImmediate(), and setTimeout()?
**Answer:**
- `process.nextTick()` schedules a callback to run after the current operation completes, before the event loop continues.
- `setImmediate()` schedules a callback to run on the next event loop iteration.
- `setTimeout()` schedules a callback after a minimum delay.

**Example:**
```javascript
console.log('Start');
process.nextTick(() => console.log('nextTick'));
setImmediate(() => console.log('setImmediate'));
setTimeout(() => console.log('setTimeout'), 0);
console.log('End');
```

## 2. How do you handle uncaught exceptions in Node.js?
**Answer:**
Use the `process.on('uncaughtException', handler)` event to catch errors that are not handled elsewhere.

**Example:**
```javascript
process.on('uncaughtException', (err) => {
  console.error('Uncaught Exception:', err);
});
throw new Error('Test error');
```

## 3. What is clustering in Node.js?
**Answer:**
Clustering allows you to run multiple Node.js processes to take advantage of multi-core systems.

**Example:**
```javascript
const cluster = require('cluster');
const os = require('os');

if (cluster.isMaster) {
  for (let i = 0; i < os.cpus().length; i++) {
    cluster.fork();
  }
} else {
  // Worker code
  console.log('Worker', process.pid);
}
```

## 4. How do you create custom streams in Node.js?
**Answer:**
Extend the `stream.Readable` or `stream.Writable` classes to create custom streams.

**Example:**
```javascript
const { Readable } = require('stream');
class MyStream extends Readable {
  _read() {
    this.push('Hello');
    this.push(null);
  }
}
const stream = new MyStream();
stream.on('data', chunk => console.log(chunk.toString()));
```

## 5. What is the role of the event emitter in Node.js?
**Answer:**
The `EventEmitter` class allows you to create and handle custom events in Node.js applications.

**Example:**
```javascript
const EventEmitter = require('events');
const emitter = new EventEmitter();
emitter.on('greet', name => console.log(`Hello, ${name}`));
emitter.emit('greet', 'Alice');
```
