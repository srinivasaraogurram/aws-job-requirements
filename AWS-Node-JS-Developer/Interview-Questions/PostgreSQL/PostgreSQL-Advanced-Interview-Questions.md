# Advanced PostgreSQL Interview Questions

## 1. How do you optimize query performance in PostgreSQL?
**Answer:**
- Use indexes appropriately
- Analyze query plans with `EXPLAIN`
- Avoid unnecessary joins and subqueries

**Example:**
```sql
EXPLAIN SELECT * FROM users WHERE name = 'Alice';
```

## 2. What are stored procedures and functions in PostgreSQL?
**Answer:**
Stored procedures and functions allow you to encapsulate logic and reuse code in the database.

**Example:**
```sql
CREATE OR REPLACE FUNCTION get_user(id INT) RETURNS TABLE(name VARCHAR) AS $$
BEGIN
  RETURN QUERY SELECT name FROM users WHERE users.id = id;
END;
$$ LANGUAGE plpgsql;
```

## 3. How do you implement partitioning in PostgreSQL?
**Answer:**
Partitioning splits large tables into smaller, more manageable pieces for performance and maintenance.

**Example:**
```sql
CREATE TABLE measurement (
  city_id         int,
  logdate         date,
  peaktemp        int,
  unitsales       int
) PARTITION BY RANGE (logdate);
```

## 4. What is WAL (Write-Ahead Logging) in PostgreSQL?
**Answer:**
WAL ensures data integrity by logging changes before they are written to disk, supporting crash recovery and replication.

## 5. How do you set up replication in PostgreSQL?
**Answer:**
Replication allows you to copy data from one database server to another for high availability and scalability.

**Example:**
- Use streaming replication with primary and standby servers
