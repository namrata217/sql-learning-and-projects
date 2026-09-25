# SQL Daily Practice – Day 01

## 📅 Topics Practiced

* CREATE DATABASE
* CREATE TABLE
* Data Types
* INSERT INTO
* SELECT
* Basic table structure

---

## 🎯 Objective

Learn the basic SQL commands required to create a database, create tables, insert records, and retrieve data.

---

## 🗄️ Database Created

```sql
CREATE DATABASE college;
```

Select the database:

```sql
USE college;
```

---

## 📋 Table Created

```sql
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    branch VARCHAR(50)
);
```

---

## ➕ Data Inserted

```sql
INSERT INTO student
VALUES
(1, 'Namrata', 22, 'CSE'),
(2, 'Shailesh', 30, 'Instrumentation'),
(3, 'Reva', 24, 'Mechanical');
```

---

## 🔍 Data Retrieved

```sql
SELECT * FROM student;
```

Select specific columns:

```sql
SELECT name, branch
FROM student;
```

---

## 📚 Concepts Learned

### CREATE DATABASE

Used to create a new database.

### CREATE TABLE

Used to create a table and define its columns.

### INSERT INTO

Used to add records to a table.

### SELECT

Used to retrieve data from a table.

### PRIMARY KEY

Used to uniquely identify each record.

---

## ❌ Mistakes / Corrections

I practiced SQL syntax carefully and learned the importance of:

* Correct column definitions
* Commas between columns
* Correct data types
* Correct SQL statement structure

---

## 💡 Key Learning

SQL is used to communicate with relational databases.

The basic workflow is:

```text
Create Database
      ↓
Create Table
      ↓
Insert Data
      ↓
Retrieve Data
```

---

## ✅ Status

**Completed**
