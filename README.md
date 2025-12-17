

# 🧠 Data Digger — SQL E-Commerce Database Project

> **“Unearthing insights from your data, one query at a time.”**  
> Crafted with precision, discipline, and vision by **THE PARTH SHAH**

---

<p align="center">
  <img src="./images/Display.png" alt="DATA DIGGER BANNER" width="85%">
</p>

## 🌟 The Essence of Data Digger

**Data Digger** is a practical, exam-ready, and industry-aligned **SQL project** that demonstrates how raw data transforms into meaningful business insight through **structured database design and intelligent querying**.

This project simulates a **real-world E-Commerce backend system**, designed to help students master:

- Relational thinking  
- Query logic  
- Data integrity  
- Analytical SQL mindset  

No shortcuts. No gimmicks.  
Just **pure SQL clarity**, executed like a professional.

---

## 🎯 Project Objective

The objective of **Data Digger** is to provide hands-on experience with:

- Designing relational tables using **Primary & Foreign Keys**
- Performing **CRUD operations**
- Applying **aggregate functions**
- Writing **realistic business queries**
- Understanding **one-to-many relationships**

This project mirrors how SQL is actually used in production-grade systems.

---

## 🧩 E-Commerce Database Architecture

<p align="center">
  <img src="./images/Schema.png" alt="E-Commerce Schema" width="85%">
</p>

The database is composed of **four interconnected tables**, each with a clear responsibility.

### 📌 Customers
Stores customer identity and contact information.

### 📌 Orders
Captures order transactions linked to customers.

### 📌 Products
Maintains product pricing and stock data.

### 📌 OrderDetails
Acts as the bridge between orders and products, tracking quantity and revenue.

🔗 Relationships are enforced using **foreign keys**, ensuring data consistency and integrity.

---

## 🛠 SQL Capabilities Demonstrated

### ✅ Data Definition (DDL)
- Database creation
- Table creation with constraints
- Relational schema design

### ✅ Data Manipulation (DML)
- INSERT realistic sample records
- UPDATE specific fields
- DELETE records safely

### ✅ Data Retrieval (DQL)
- Customer-wise order tracking
- Date-based filtering
- Price-based product filtering
- Sales analysis using aggregation

---

## 📊 Analytical Intelligence in Action

<p align="center">
  <img src="./images/Dashboard.png" alt="Analytics Preview" width="85%">
</p>

Using SQL alone, this project extracts:

- 💰 **Total Revenue** using `SUM()`
- 📦 **Top 3 Products by Quantity Sold**
- 📉 **Recent Orders (Last 30 Days)**
- 📊 **Highest, Lowest & Average Order Values**
- 🔢 **Product Sales Frequency using COUNT()**

Each query answers a **real business question**, not a textbook one.

---

## 🧪 Queries Executed (Snapshot)

```sql
SELECT SUM(SubTotal) AS TotalRevenue
FROM OrderDetails;
SELECT ProductID, SUM(Quantity) AS TotalSold
FROM OrderDetails
GROUP BY ProductID
ORDER BY TotalSold DESC
LIMIT 3;

SELECT *
FROM Orders
WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;
```

**Simple queries.**<br>
**Serious insight.**  

---

## 📂 Repository Structure

```text
Data-Digger/
│
├── data_digger.sql        # Complete SQL script
├── README.md              # Project documentation
└── images/
    ├── Banner.png
    ├── Dashboard.png
    ├── Display.png
    └── Schema.png
```

---

## ⚙️ How to Execute

1. Open **MySQL Workbench** or **MySQL Terminal**
2. Create a new SQL session
3. Run the following command:

```sql
SOURCE data_digger.sql;
```

4. Verify tables and execute queries step by step

No external dependencies are required.

---

## ⚠️ Assumptions Made

* Currency values are represented in **INR**
* Dates are calculated using the system date
* Stock values are managed manually
* MySQL version supports standard ANSI SQL

These assumptions are documented as per academic project guidelines.

---

## 🧠 Why This Project Stands Out

* ✔ Clean and normalized schema design
* ✔ Realistic and meaningful sample data
* ✔ Examiner-friendly and logically ordered queries
* ✔ GitHub-ready professional presentation
* ✔ Zero plagiarism risk
* ✔ Written with intent, not unnecessary complexity

This project is designed to be **read, understood, and respected**.

---

## 🧑‍💻 About the Creator

<p align="center">
  <img src="./images/Banner.png" alt="Project Logo" width="250">
</p>

**Parth Shah**
Artist • Analyst • Developer • Storyteller

> “I don’t just write queries.
> I interrogate data until it confesses.”

* 📎 GitHub: [https://github.com/ParthShah7099](https://github.com/ParthShah7099)

---

## ❤️ Let’s Connect & Build Forward

If **Data Digger** helped you understand SQL a little deeper, think a little sharper, or see data a little clearer:

* ⭐ **Star this repository** — it supports future refinements and new data-driven builds
* 🔁 **Fork it and experiment** — databases grow stronger when challenged
* 📬 **Connect with me** on [LinkedIn — Parth Shah](https://www.linkedin.com/in/parth-shah-28387532b?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app)

This project is a reflection of discipline, curiosity, and respect for structured thinking.
If it inspired even one new query in your mind — it has already done its job.

> **“Data rewards those who ask better questions.”**
> — *THE PARTH SHAH*

---

## ⭐ Final Note

This is not a flashy SQL project.
This is a **disciplined one**.

Built to pass exams.
Built to impress evaluators.
Built to reflect the mindset of someone who takes data seriously.

**Data Digger** is complete.
And it’s ready to speak for you.

---
