-- Table: attribute_type


-- Table: attribute_category


-- Table: product_attribute


-- Table: size_category


-- Table: size_option


-- Table: color


-- Table: brand


-- Table: product_category
CREATE TABLE product_category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) UNIQUE
    );

-- Table: product
CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    brand VARCHAR(100),
    base_price DECIMAL(10, 2),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
        );

-- Table: product_variation


-- Table: product_item


-- Table: product_image
