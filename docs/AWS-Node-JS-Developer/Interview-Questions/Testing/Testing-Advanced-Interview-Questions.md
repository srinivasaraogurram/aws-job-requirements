# Advanced Testing Interview Questions

## 1. How do you implement end-to-end (E2E) testing?
**Answer:**
E2E testing validates the entire application flow, simulating real user scenarios using tools like Cypress, Selenium, or Playwright.

**Example (Cypress):**
```javascript
describe('Login Flow', () => {
  it('should log in successfully', () => {
    cy.visit('/login');
    cy.get('input[name="username"]').type('user');
    cy.get('input[name="password"]').type('pass');
    cy.get('button[type="submit"]').click();
    cy.url().should('include', '/dashboard');
  });
});
```

## 2. What is test-driven development (TDD)?
**Answer:**
TDD is a development approach where tests are written before code, ensuring code meets requirements and is testable.

## 3. How do you use mocking frameworks for complex dependencies?
**Answer:**
Use libraries like Jest, Sinon, or Moq to mock functions, modules, and HTTP requests.

**Example (Jest):**
```javascript
jest.mock('axios');
```

## 4. How do you test asynchronous code?
**Answer:**
Use async/await or callback patterns in your tests, and ensure tests wait for promises to resolve.

**Example (Jest):**
```javascript
test('fetches data', async () => {
  const data = await fetchData();
  expect(data).toBeDefined();
});
```

## 5. How do you measure and improve test reliability?
**Answer:**
- Avoid flaky tests
- Use setup/teardown hooks
- Isolate test environments
- Monitor test results and failures
