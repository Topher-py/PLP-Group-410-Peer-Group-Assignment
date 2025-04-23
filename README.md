# PLP-Group-410-Peer-Group-Assignment
# 🛒 E-Commerce Database Schema

This project defines a relational **MySQL database schema** for a scalable e-commerce system. It supports rich product variations, categorization, branding, and flexible attributes like sizes, colors, and custom specifications.

## 📁 Project Structure

- `ecommerce.sql..sql` – SQL script to create all tables in the correct order
- `ERD Diagram` – Visual representation of all tables and relationships (available as PNG)

---

## 🧱 Tables Overview

| Table Name         | Description |
|--------------------|-------------|
| `attribute_type`   | Defines the type of attribute (text, number, boolean) |
| `attribute_category` | Groups attributes into categories (e.g., physical, technical) |
| `product_attribute` | Stores custom attributes for products |
| `size_category`    | Groups sizing systems (e.g., clothing sizes, shoe sizes) |
| `size_option`      | Lists specific sizes like S, M, L, or numeric values |
| `color`            | Manages available product color options |
| `brand`            | Stores information about product brands |
| `product_category` | Classifies products into high-level categories |
| `product`          | Represents core products (name, brand, base price) |
| `product_variation` | Links a product with specific size and color variations |
| `product_item`     | Specific purchasable items (SKU, price, stock) |
| `product_image`    | Stores image URLs associated with product items |

