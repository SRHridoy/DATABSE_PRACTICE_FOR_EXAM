# MySQL Tutorial - বাংলায় সহজ গাইড

## সূচিপত্র

1. [MySQL কি?](#mysql-কি)
2. [Installation](#installation)
3. [Database তৈরি করা](#database-তৈরি-করা)
4. [Table তৈরি করা](#table-তৈরি-করা)
5. [Data Insert করা](#data-insert-করা)
6. [Data দেখা (SELECT)](#data-দেখা-select)
7. [Data Update করা](#data-update-করা)
8. [Data Delete করা](#data-delete-করা)
9. [গুরুত্বপূর্ণ Commands](#গুরুত্বপূর্ণ-commands)

## MySQL কি?

MySQL হলো একটি জনপ্রিয় **Relational Database Management System (RDBMS)**। এটি দিয়ে আপনি data সংরক্ষণ, পরিচালনা এবং retrieve করতে পারবেন।

## Installation

### Windows এ:

1. [MySQL Official Website](https://dev.mysql.com/downloads/) থেকে MySQL Installer ডাউনলোড করুন
2. Installer রান করুন এবং setup wizard follow করুন
3. Root password সেট করুন

## Database তৈরি করা

```sql
-- নতুন database তৈরি
CREATE DATABASE school;

-- Database ব্যবহার করা
USE school;

-- সব database দেখা
SHOW DATABASES;
```

## Table তৈরি করা

```sql
-- Students table তৈরি
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT,
    class VARCHAR(10),
    city VARCHAR(50)
);

-- Table structure দেখা
DESCRIBE students;
```

## Data Insert করা

```sql
-- একটি data insert
INSERT INTO students (name, age, class, city)
VALUES ('রহিম', 15, '10', 'ঢাকা');

-- একসাথে অনেক data insert
INSERT INTO students (name, age, class, city) VALUES
('করিম', 16, '10', 'চট্টগ্রাম'),
('সালমা', 14, '9', 'সিলেট'),
('রিনা', 15, '10', 'রাজশাহী');
```

## Data দেখা (SELECT)

```sql
-- সব data দেখা
SELECT * FROM students;

-- নির্দিষ্ট column দেখা
SELECT name, age FROM students;

-- শর্ত দিয়ে data খুঁজা (WHERE)
SELECT * FROM students WHERE class = '10';

-- বয়স অনুযায়ী সাজানো
SELECT * FROM students ORDER BY age DESC;
```

## Data Update করা

```sql
-- নির্দিষ্ট data update
UPDATE students
SET city = 'খুলনা'
WHERE name = 'রহিম';

-- একসাথে একাধিক field update
UPDATE students
SET age = 17, class = '11'
WHERE id = 1;
```

## Data Delete করা

```sql
-- নির্দিষ্ট data মুছে ফেলা
DELETE FROM students WHERE id = 1;

-- সব data মুছে ফেলা (সাবধান!)
DELETE FROM students;

-- পুরো table মুছে ফেলা
DROP TABLE students;
```

## গুরুত্বপূর্ণ Commands

### WHERE Clause

```sql
SELECT * FROM students WHERE age > 15;
SELECT * FROM students WHERE city = 'ঢাকা' AND class = '10';
SELECT * FROM students WHERE age BETWEEN 14 AND 16;
```

### LIKE Operator (Search)

```sql
-- নাম যেটি 'র' দিয়ে শুরু
SELECT * FROM students WHERE name LIKE 'র%';

-- নাম যেটিতে 'ম' আছে
SELECT * FROM students WHERE name LIKE '%ম%';
```

### COUNT, SUM, AVG

```sql
-- মোট students সংখ্যা
SELECT COUNT(*) FROM students;

-- গড় বয়স
SELECT AVG(age) FROM students;

-- সর্বোচ্চ বয়স
SELECT MAX(age) FROM students;
```

### JOIN (দুটি table যুক্ত করা)

```sql
-- INNER JOIN example
SELECT students.name, marks.subject, marks.score
FROM students
INNER JOIN marks ON students.id = marks.student_id;
```

## Tips & Best Practices

- ✅ সবসময় database backup রাখুন
- ✅ Strong password ব্যবহার করুন
- ✅ DELETE এবং UPDATE এ সবসময় WHERE clause ব্যবহার করুন
- ✅ Column names ছোট হাতের এবং meaningful রাখুন
- ✅ Primary Key অবশ্যই ব্যবহার করুন

## সাধারণ Error সমাধান

| Error               | সমাধান                             |
| ------------------- | ---------------------------------- |
| Access Denied       | Username/Password চেক করুন         |
| Table doesn't exist | Table name সঠিক লিখেছেন কিনা দেখুন |
| Syntax Error        | SQL syntax আবার চেক করুন           |

---

**নোট:** নিয়মিত practice করুন। MySQL শিখতে হলে hands-on experience খুবই জরুরি!

## Advanced Topics

### Indexing

Index হলো database এর একটি data structure যা data খুঁজে পেতে সাহায্য করে দ্রুত গতিতে।

```sql
-- Index তৈরি করা
CREATE INDEX idx_name ON students(name);

-- একাধিক column এ index
CREATE INDEX idx_name_class ON students(name, class);

-- Unique index
CREATE UNIQUE INDEX idx_email ON students(email);

-- Index দেখা
SHOW INDEX FROM students;

-- Index মুছে ফেলা
DROP INDEX idx_name ON students;
```

**কখন Index ব্যবহার করবেন:**

- ✅ যে column এ frequently search করা হয়
- ✅ JOIN operation এর জন্য
- ✅ WHERE clause এ ব্যবহৃত column এ

**কখন Index এড়িয়ে যাবেন:**

- ❌ ছোট table এ
- ❌ যে column এ frequently UPDATE/INSERT হয়

### Hashing

Hashing হলো একটি technique যেখানে data কে একটি fixed-size value তে convert করা হয়।

```sql
-- Password hashing (MD5)
SELECT MD5('mypassword');

-- SHA1 hashing
SELECT SHA1('mypassword');

-- SHA2 hashing (more secure)
SELECT SHA2('mypassword', 256);

-- Password store করার example
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50),
    password_hash VARCHAR(64)
);

INSERT INTO users (username, password_hash)
VALUES ('sohan', SHA2('mypassword', 256));

-- Password verify করা
SELECT * FROM users
WHERE username = 'sohan'
AND password_hash = SHA2('mypassword', 256);
```

**Hashing এর সুবিধা:**

- 🔒 Security বৃদ্ধি পায়
- 🔍 দ্রুত data lookup
- 💾 Data integrity maintain করা

### Normalization

Normalization হলো database design এর একটি process যা data redundancy কমায় এবং data integrity বৃদ্ধি করে।

#### 1NF (First Normal Form)

- প্রতিটি column এ atomic value থাকবে
- Repeating groups থাকবে না

```sql
-- ❌ Bad (Not 1NF)
CREATE TABLE students_bad (
    id INT,
    name VARCHAR(50),
    subjects VARCHAR(200)  -- 'Math, English, Science'
);

-- ✅ Good (1NF)
CREATE TABLE students_subjects (
    student_id INT,
    subject VARCHAR(50)
);
```

#### 2NF (Second Normal Form)

- 1NF মেনে চলতে হবে
- Partial dependency থাকবে না

```sql
-- ✅ 2NF Example
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(50)
);

CREATE TABLE enrollments (
    student_id INT,
    subject_id INT,
    grade VARCHAR(2),
    PRIMARY KEY (student_id, subject_id)
);
```

#### 3NF (Third Normal Form)

- 2NF মেনে চলতে হবে
- Transitive dependency থাকবে না

```sql
-- ❌ Not 3NF
CREATE TABLE students_bad (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    city_pincode VARCHAR(10)  -- depends on city, not id
);

-- ✅ 3NF
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    city_id INT
);

CREATE TABLE cities (
    city_id INT PRIMARY KEY,
    city_name VARCHAR(50),
    pincode VARCHAR(10)
);
```

**Normalization এর সুবিধা:**

- ✅ Data redundancy কমে
- ✅ Data consistency বৃদ্ধি পায়
- ✅ Update anomaly এড়ানো যায়
- ✅ Storage space কম লাগে

**কখন Denormalization করবেন:**

- যখন read performance বাড়াতে হবে
- Reporting এর জন্য
- কম UPDATE operation হলে
