# PLP-Group-410-Peer-Group-Assignment
# 🛒 E-Commerce Database Schema

Product Catalog Database Schema

This schema represents the structure of a product catalog for an e-commerce platform. It includes tables for products, attributes, variations, and related data such as brands, categories, and size options.

**Tables:**

**attribute_type**

Stores the types of product attributes (e.g., material, color).

Columns: attr_type_id, name, dataType.

**attribute_category**
Defines categories for product attributes (e.g., Material, Pattern).

Columns: attr_cat_id, name.

**brand**
Stores brand information.

Columns: brand_id, brand_name, brand_description, website_url.

**product_category**
Stores product categories.

Columns: product_category_id, category_name.

**product**
Stores product details.

Columns: product_id, product_name, product_description, brand_id, product_category_id, price.

**product_attribute**
Links products with attributes.

Columns: attribute_id, product_id, attr_cat_id, attr_type_id, value.

**size_category**
Defines categories for size options (e.g., Small, Medium, Large).

Columns: size_category_id, category_name, description.

**size_option**
Stores size options for products.

Columns: size_option_id, size_label, size_category_id, created_at, updated_at.

**color**
Stores color options for products.

Columns: color_id, color_name.

**product_item**
Stores individual product items with specific attributes.

Columns: product_item_id, product_id, sku, price, color_id, size_option_id, stock_quantity.

**product_variation**
Stores variations of products (e.g., different color/size combinations).

Columns: variation_id, item_id, size_option_id, color_id.

**product_image**
Stores images for products and items.

Columns: product_image_id, image_url, product_id, product_item_id.

**Usage**

This schema can be used for managing and displaying products, their variations (like sizes and colors), and their associated metadata. It supports flexible categorization and product attribute configurations.

**Example Use Cases**

Managing Products: Storing product details such as name, description, price, and category.

Product Attributes: Associating attributes like size, color, material with products.

Tracking Inventory: Managing stock levels through the product_item table.

Product Variations: Supporting multiple variations of the same product (different sizes or colors).
