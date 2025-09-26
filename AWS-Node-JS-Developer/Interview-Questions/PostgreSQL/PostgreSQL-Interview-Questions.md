# PostgreSQL Interview Questions

## 1. What is PostgreSQL and why is it popular?
**Answer:**
PostgreSQL is an open-source, advanced relational database known for its reliability, feature set, and extensibility. It supports complex queries, transactions, and data integrity.

**Example:**
```sql
-- Create a table
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100)
);
```

## 2. How do you perform CRUD operations in PostgreSQL?
**Answer:**
CRUD stands for Create, Read, Update, Delete. These are basic operations for managing data in a database.

**Example:**
```sql
-- Insert
INSERT INTO users (name) VALUES ('Alice');
-- Read
SELECT * FROM users;
-- Update
UPDATE users SET name = 'Bob' WHERE id = 1;
-- Delete
DELETE FROM users WHERE id = 1;
```

## 3. What are indexes and why are they important?
**Answer:**
Indexes speed up data retrieval operations on a database table at the cost of additional writes and storage space.

**Example:**
```sql
CREATE INDEX idx_name ON users(name);
```

## 4. How do you handle transactions in PostgreSQL?
**Answer:**
Transactions ensure that a series of operations are completed successfully before committing changes to the database.

**Example:**
```sql
BEGIN;
UPDATE users SET name = 'Charlie' WHERE id = 2;
COMMIT;
```

## 5. What is a JOIN in SQL?
**Answer:**
A JOIN combines rows from two or more tables based on a related column.

**Example:**
```sql
SELECT users.name, orders.amount
FROM users
JOIN orders ON users.id = orders.user_id;
```
