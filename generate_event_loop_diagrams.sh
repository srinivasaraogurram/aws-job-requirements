#!/bin/bash
# Batch generate Event Loop sequence diagrams as PNG images using Mermaid CLI
# Usage: bash generate_event_loop_diagrams.sh

# Ensure Mermaid CLI is installed
if ! command -v mmdc &> /dev/null; then
  echo "Mermaid CLI (mmdc) not found. Installing..."
  npm install -g @mermaid-js/mermaid-cli
fi

echo "Generating diagrams..."

# 1. Synchronous Execution and the Call Stack
echo "sequenceDiagram
participant Program
participant CallStack
Program->>CallStack: Invoke function
CallStack->>CallStack: Evaluate task
CallStack->>Program: Pop execution context" > sync.mmd
mmdc -i sync.mmd -o sync.png

# 2. Callback-Based Web APIs (setTimeout, Geolocation)
echo "sequenceDiagram
participant Program
participant CallStack
participant WebAPI
participant TaskQueue
participant EventLoop
Program->>CallStack: Call setTimeout
CallStack->>WebAPI: Register callback, pop from stack
WebAPI->>TaskQueue: After delay, push callback
EventLoop->>CallStack: If stack empty, move callback from TaskQueue" > callback.mmd
mmdc -i callback.mmd -o callback.png

# 3. Promise-Based Web APIs (fetch, then)
echo "sequenceDiagram
participant Program
participant CallStack
participant WebAPI
participant Promise
participant MicrotaskQueue
participant EventLoop
Program->>CallStack: Call fetch
CallStack->>WebAPI: Initiate network request, pop from stack
WebAPI->>Promise: Fulfill promise
Promise->>MicrotaskQueue: Queue .then callback
EventLoop->>CallStack: If stack empty, move microtask to stack" > promise.mmd
mmdc -i promise.mmd -o promise.png

# 4. Event Loop Priority and Interplay
echo "sequenceDiagram
participant EventLoop
participant MicrotaskQueue
participant TaskQueue
participant CallStack
EventLoop->>MicrotaskQueue: Check microtasks first
MicrotaskQueue->>CallStack: Move all microtasks to stack
EventLoop->>TaskQueue: Only when microtasks empty, check tasks
TaskQueue->>CallStack: Move task to stack" > priority.mmd
mmdc -i priority.mmd -o priority.png

# 5. Quiz Execution Workflow (Output: 5, 1, 3, 4, 2)
echo "sequenceDiagram
participant Program
participant CallStack
participant MicrotaskQueue
participant TaskQueue
participant EventLoop
Program->>CallStack: console.log(5)
Program->>MicrotaskQueue: Promise.then(console.log(1))
Program->>MicrotaskQueue: queueMicrotask(console.log(3))
Program->>TaskQueue: setTimeout(console.log(2))
MicrotaskQueue->>MicrotaskQueue: queueMicrotask(console.log(4))
EventLoop->>CallStack: Execute 5, 1, 3, 4, 2 in order" > quiz.mmd
mmdc -i quiz.mmd -o quiz.png

echo "All diagrams generated as PNG files: sync.png, callback.png, promise.png, priority.png, quiz.png"
