# PLP-Group-410-Peer-Group-Assignment
# 🛒 E-Commerce Database Schema

Product Catalog Database Schema

This schema represents the structure of a product catalog for an e-commerce platform. It includes tables for products, attributes, variations, and related data such as brands, categories, and size options.

**Tables:**

1.**attribute_type**

Stores the types of product attributes (e.g., material, color).

Columns: attr_type_id, name, dataType.

2.**attribute_category**

Defines categories for product attributes (e.g., Material, Pattern).
Columns: attr_cat_id, name.

3.**brand**

Stores brand information.
Columns: brand_id, brand_name, brand_description, website_url.

4.**product_category**

Stores product categories.
Columns: product_category_id, category_name.

5.**product**

Stores product details.
Columns: product_id, product_name, product_description, brand_id, product_category_id, price.

6.**product_attribute**

Links products with attributes.
Columns: attribute_id, product_id, attr_cat_id, attr_type_id, value.

7.**size_category**

Defines categories for size options (e.g., Small, Medium, Large).
Columns: size_category_id, category_name, description.

8.**size_option**

Stores size options for products.
Columns: size_option_id, size_label, size_category_id, created_at, updated_at.

9.**color**

Stores color options for products.
Columns: color_id, color_name.

10.**product_item**

Stores individual product items with specific attributes.
Columns: product_item_id, product_id, sku, price, color_id, size_option_id, stock_quantity.

11.**product_variation**

Stores variations of products (e.g., different color/size combinations).
Columns: variation_id, item_id, size_option_id, color_id.

12.**product_image**

Stores images for products and items.
Columns: product_image_id, image_url, product_id, product_item_id.

**Usage**

This schema can be used for managing and displaying products, their variations (like sizes and colors), and their associated metadata. It supports flexible categorization and product attribute configurations.

**Example Use Cases**

Managing Products: Storing product details such as name, description, price, and category.

Product Attributes: Associating attributes like size, color, material with products.

Tracking Inventory: Managing stock levels through the product_item table.

Product Variations: Supporting multiple variations of the same product (different sizes or colors).
