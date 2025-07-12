# SQL Mini Project – MySQL Dump

This repository contains a MySQL database dump file `my.sql` representing a multi-table relational database system. It covers data about machines, their parts, vehicles, owners, products, and wholesalers.

## 📂 File Overview

- **Filename:** `my.sql`
- **Database:** `sample`
- **Exported using:** MySQL 8.0.39

## 🗃️ Tables Included

### 1. `machine`
- Stores machine information like number, name, type, and cost.
- Example:
  - `mac_no`: 11
  - `mac_name`: bicycle
  - `mac_type`: simple
  - `mac_cost`: 1590000

### 2. `part`
- Contains parts associated with machines.
- Linked by `mac_no`.
- Includes details like `part_name` and `part_desc`.

### 3. `car_info`
- Records information about cars such as:
  - `car_no`, `model`, `colour`, and `ownername`.

### 4. `owner_info`
- Contains owner details with `Licence_no`, `address`, and `phone`.

### 5. `product`
- List of products sold, identified by `product_no` and `product_name`.
- Linked to the `wholesaler` table via foreign key.

### 6. `wholesaler`
- Stores data about wholesalers including:
  - `wholesale_no`, `wholesale_name`, `address`, and `city`.

## 🔄 How to Use

1. **Create a database** in your MySQL server:
   ```sql
   CREATE DATABASE sample;
   USE sample;
2.Import the SQL file:

Using terminal:

bash
Copy
Edit
mysql -u your_username -p sample < my.sql

3. Explore the database:

Example queries:

sql
Copy
Edit
SELECT * FROM machine WHERE mac_cost > 100000;
SELECT * FROM part WHERE part_name = 'HANDLE';
