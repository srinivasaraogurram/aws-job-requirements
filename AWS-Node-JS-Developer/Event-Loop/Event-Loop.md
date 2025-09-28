This is a great approach for preparing for an interview. Since I cannot generate visual diagrams (Sequence Diagram or Workflow Diagram), I will provide detailed, step-by-step descriptions of the execution flow for the key concepts explained in the source material. These descriptions function as a structured quick reference for how tasks move between the components of the JavaScript Runtime.

The JavaScript Runtime components include the **Call Stack**, **Web APIs**, **Task Queue** (or Callback Queue), **Microtask Queue**, and the **Event Loop**.

***

## 1. Synchronous Execution and the Call Stack

This segment describes how single-threaded JavaScript handles standard function calls and potential blocking.

| Component | Sequence Diagram/Workflow Step | Source Support |
| :--- | :--- | :--- |
| **Call Stack** | **A. Function Invocation:** A new execution context is created and pushed onto the Call Stack (LIFO structure). | |
| **Call Stack** | **B. Evaluation:** The task is evaluated (e.g., running `console.log`). | |
| **Call Stack** | **C. Completion:** Once evaluated, the execution context is popped off the Call Stack. | |
| **Program State** | **D. Single Task Constraint:** JavaScript can only handle a single task at a time. | |
| **Blocking Risk** | **E. Long Running Tasks:** If a task requires heavy computation and takes a long time, the entire program is frozen because the rest of the script cannot continue until the long-running task is complete. | |

***

## 2. Callback-Based Web APIs (Example: Geolocation/SetTimeout)

This describes the flow for asynchronous tasks handled by callback-based Web APIs, which utilize the **Task Queue**.

| Component | Sequence Diagram/Workflow Step | Source Support |
| :--- | :--- | :--- |
| **Call Stack** | **A. API Invocation:** The call to an asynchronous Web API (e.g., `getCurrentPosition`, `setTimeout`) is added to the Call Stack. | |
| **Call Stack** | **B. Hand-off:** The function registers the callback(s) and initiates the asynchronous task, then immediately gets popped off the Call Stack. This allows the program to continue running. | |
| **Web API** | **C. Background Processing:** The browser handles the long-running asynchronous process in the background (e.g., network request, waiting for user input, running a timer). This does *not* block the Call Stack. | |
| **Task Queue** | **D. Task Completion:** Once the asynchronous task completes (or the delay expires, as with `setTimeout`), the corresponding callback is pushed onto the **Task Queue** (also called the Callback Queue). | |
| **Event Loop** | **E. Queue Check (Call Stack Empty):** The Event Loop constantly checks if the **Call Stack is empty**. | |
| **Event Loop $\rightarrow$ Call Stack** | **F. Execution:** If the Call Stack is empty, the Event Loop takes the first available task from the Task Queue and moves it onto the Call Stack for execution. | |
| **Important Note (Delay):** | The delay specified in `setTimeout` is the minimum time until the callback is moved to the Task Queue, **not** the time until execution begins. If the Call Stack is busy, the callback must wait indefinitely in the Task Queue. | |

***

## 3. Promise-Based Web APIs (Example: Fetch)

This describes the flow for Promise-based asynchronous tasks, which utilize the **Microtask Queue**.

| Component | Sequence Diagram/Workflow Step | Source Support |
| :--- | :--- | :--- |
| **Call Stack** | **A. API Invocation:** The `fetch` call is added to the Call Stack. | |
| **Call Stack** | **B. Promise Creation & Hand-off:** A new promise object (initially pending) is created, and the background network request is initiated by the browser. The `fetch` function is immediately popped off the Call Stack. | |
| **Synchronous Code** | **C. Synchronous Execution:** Any synchronous code that follows runs immediately. | |
| **Promise Object** | **D. Reaction Record:** When `.then()` is encountered, a promise reaction record is created (holding the handler function). | |
| **Web API $\rightarrow$ Promise** | **E. Task Completion:** The server returns data, setting the Promise status to fulfilled and the result to the response object. | |
| **Microtask Queue** | **F. Queueing:** The promise reaction handler (`then` callback) is pushed to the **Microtask Queue**. | |
| **Event Loop $\rightarrow$ Microtask Queue** | **G. Priority Check:** When the Call Stack is empty, the Event Loop **first prioritizes** the Microtask Queue. | |
| **Microtask Queue $\rightarrow$ Call Stack** | **H. Execution:** The Event Loop moves tasks from the Microtask Queue to the Call Stack until the Microtask Queue is **entirely empty**. | |
| **Event Loop** | **I. Subsequent Check:** Only after the Microtask Queue is completely cleared will the Event Loop move to check the Task Queue. | |

***

## 4. Event Loop Priority and Interplay

This describes the critical rules governing the **Microtask Queue** and **Task Queue** interaction.

| Component | Sequence Diagram/Workflow Step | Source Support |
| :--- | :--- | :--- |
| **Microtask Queue Content** | This queue holds `then`/`catch`/`finally` callbacks, function bodies after `await`, `queueMicrotask` callbacks, and `Mutation Observer` callbacks. | |
| **Task Queue Content** | This queue holds callbacks from Callback-based Web APIs (like `setTimeout` or event handlers). | |
| **Priority Rule 1 (Initial)** | The Event Loop ensures the **Microtask Queue is entirely empty** before moving to the Task Queue. | |
| **Priority Rule 2 (Interim)** | After every single task is executed from the **Task Queue**, the Event Loop checks the Microtask Queue again to ensure nothing new has been added in the meantime. | |
| **Danger Scenario** | A microtask can schedule another microtask. If this happens continuously, the Event Loop will be constantly handling the Microtask Queue, potentially leading to an infinite loop, preventing the Event Loop from ever reaching the Task Queue. | |

***

## 5. Quiz Execution Workflow (Priority Demonstration)

This workflow demonstrates the interaction of synchronous code, promises (microtasks), and timers (tasks) leading to the output **5, 1, 3, 4, 2**.

**Script Components:**
1. `Promise.resolve().then(console.log(1))`
2. `setTimeout(console.log(2), 10)`
3. `queueMicrotask(() => { console.log(3); queueMicrotask(console.log(4)); })`
4. `console.log(5)`

| Step | Location | Action | Output | Source Support |
| :--- | :--- | :--- | :--- | :--- |
| **Initialization (Part 1)** | Call Stack | `Promise.resolve()`: Creates resolved promise. Handler (1) is instantly pushed to the **Microtask Queue**. | - | |
| **Initialization (Part 2)** | Call Stack $\rightarrow$ Web API | `setTimeout`: Registers timer with Web API. Callback (2) will move to Task Queue later. | - | |
| **Initialization (Part 3)** | Call Stack | `queueMicrotask`: Call Stack adds the invocation, which queues callback (3) to the **Microtask Queue**. | - | |
| **1.** | **Call Stack** | `console.log(5)`: Synchronous code executes immediately. | **5** | |
| **Timer Event** | Web API $\rightarrow$ Task Queue | (10ms expire) The timer fires; callback (2) moves to the **Task Queue**. | - | |
| **2.** | **Event Loop $\rightarrow$ Microtask Q** | Call Stack is empty. Event Loop checks Microtask Queue (Priority). It finds (1) and (3). | - | |
| **3.** | **Microtask Q $\rightarrow$ Call Stack** | Task (1) moves to Call Stack and executes. | **1** | |
| **4.** | **Microtask Q $\rightarrow$ Call Stack** | Task (3) moves to Call Stack. Executes `console.log(3)`. | **3** | |
| **5.** | **Call Stack $\rightarrow$ Microtask Q** | Task (3) schedules another microtask: callback (4) is pushed onto the **Microtask Queue**. | - | |
| **6.** | **Event Loop $\rightarrow$ Microtask Q** | The Event Loop checks the Microtask Queue again (it must be entirely empty). Task (4) is moved to the Call Stack. | **4** | |
| **7.** | **Microtask Q $\rightarrow$ Task Q** | Microtask Queue is empty. Call Stack is empty. Event Loop moves to the **Task Queue**. Task (2) is available. | - | |
| **8.** | **Task Q $\rightarrow$ Call Stack** | Task (2) moves to Call Stack and executes. | **2** | |
| **Final Result** | - | - | **5, 1, 3, 4, 2** | |