# Testing Tutorial & Hands-On Practice

## 1. Introduction to Testing
Testing ensures your code works as expected and helps prevent bugs. Common types include unit, integration, and end-to-end (E2E) testing.

---

## 2. Unit Testing Tutorial
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
**Explanation:**
- Tests a single function in isolation.

---

## 3. Integration Testing Tutorial
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
**Explanation:**
- Tests how modules work together.

---

## 4. Mocking Tutorial
```javascript
jest.mock('./db');
```
**Explanation:**
- Simulates external dependencies for isolated testing.

---

## 5. Measuring Code Coverage
```bash
jest --coverage
```
**Explanation:**
- Shows what percentage of code is tested.

---

## Practice Exercise
1. Write unit tests for a utility function.
2. Write integration tests for a service.
3. Mock a database module in your tests.
4. Run tests and check code coverage.

Try these examples in your local environment using Jest or another testing framework!
