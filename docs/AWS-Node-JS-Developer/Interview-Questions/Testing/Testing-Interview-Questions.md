# Testing Interview Questions

## 1. What is unit testing?
**Answer:**
Unit testing involves testing individual components or functions of code to ensure they work as expected.

**Example (TypeScript/Jest):**
```typescript
// add.ts
export function add(a: number, b: number): number {
  return a + b;
}

// add.test.ts
import { add } from './add';
test('adds two numbers', () => {
  expect(add(2, 3)).toBe(5);
});
```

## 2. What is integration testing?
**Answer:**
Integration testing checks how different modules or services work together.

**Example (Node.js/Jest):**
```javascript
// userService.js
function getUser(id) {
  // Simulate DB call
  return { id, name: 'Alice' };
}
module.exports = { getUser };

// userService.test.js
const { getUser } = require('./userService');
test('gets user by id', () => {
  expect(getUser(1)).toEqual({ id: 1, name: 'Alice' });
});
```

## 3. What is mocking in testing?
**Answer:**
Mocking simulates external dependencies or modules to isolate the code under test.

**Example (Jest):**
```javascript
jest.mock('./db');
```

## 4. How do you measure code coverage?
**Answer:**
Code coverage tools (e.g., Jest, Istanbul) measure the percentage of code executed by tests.

**Example:**
```bash
jest --coverage
```

## 5. What are best practices for writing tests?
**Answer:**
- Write clear, independent tests
- Use descriptive names
- Test edge cases
- Keep tests fast and reliable
