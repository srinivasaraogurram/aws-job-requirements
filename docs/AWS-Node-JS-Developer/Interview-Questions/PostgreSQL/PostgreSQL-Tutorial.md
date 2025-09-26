# PostgreSQL Tutorial & Hands-On Practice

## 1. Introduction to PostgreSQL
PostgreSQL is a powerful, open-source relational database system. It supports advanced features like transactions, indexing, and extensibility.

---

## 2. CRUD Operations Tutorial
### Create
```sql
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100)
);
INSERT INTO users (name) VALUES ('Alice');
```
**Explanation:**
- `CREATE TABLE` creates a new table.
- `INSERT INTO` adds a new row.

### Read
```sql
SELECT * FROM users;
```
**Explanation:**
- `SELECT` retrieves data from the table.

### Update
```sql
UPDATE users SET name = 'Bob' WHERE id = 1;
```
**Explanation:**
- `UPDATE` modifies existing data.

### Delete
```sql
DELETE FROM users WHERE id = 1;
```
**Explanation:**
- `DELETE` removes data from the table.

---

## 3. Indexes Tutorial
```sql
CREATE INDEX idx_name ON users(name);
```
**Explanation:**
- Indexes speed up queries on columns.

---

## 4. Transactions Tutorial
```sql
BEGIN;
UPDATE users SET name = 'Charlie' WHERE id = 2;
COMMIT;
```
**Explanation:**
- `BEGIN` starts a transaction.
- `COMMIT` saves changes.

---

## 5. JOINs Tutorial
```sql
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  amount DECIMAL
);

SELECT users.name, orders.amount
FROM users
JOIN orders ON users.id = orders.user_id;
```
**Explanation:**
- `JOIN` combines data from multiple tables.

---

## Practice Exercise
1. Create a table for products.
2. Insert sample data.
3. Write a query to join users and orders.
4. Update a user's name.
5. Delete an order.

Try these steps in a PostgreSQL environment to reinforce your learning!
