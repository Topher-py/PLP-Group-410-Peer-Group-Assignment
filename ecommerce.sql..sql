-- Table: attribute_type
CREATE TABLE attribute_type (
    attr_type_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dataType VARCHAR(100) NOT NULL
);


-- Table: attribute_category
INSERT INTO attribute_category (attr_cat_id, name) VALUES 
(1, 'Material'),
(2, 'Pattern'),
(3, 'Style'),
(4, 'Sleeve Length'),
(5, 'Neckline'),
(6, 'Fit'),
(7, 'Season'),
(8, 'Fabric Weight'),
(9, 'Occasion');


-- Table: product_attribute


-- Table: size_category
CREATE TABLE size_category (
    size_category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL,
    description TEXT
);

-- Table: size_option


-- Table: color


-- Table: brand
CREATE TABLE brand (
    brand_id INT AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(255) NOT NULL,
    brand_description TEXT,
    website_url VARCHAR(255)
);

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
CREATE TABLE product_variation (
    variation_id INT AUTO_INCREMENT PRIMARY KEY,
    item_id INT NOT NULL,
    size_option_id INT,
    color_id INT,
    FOREIGN KEY (item_id) REFERENCES product_item(item_id) ON DELETE CASCADE,
    FOREIGN KEY (size_option_id) REFERENCES size_option(size_option_id) ON DELETE SET NULL,
    FOREIGN KEY (color_id) REFERENCES color(color_id) ON DELETE SET NULL
);

-- Table: product_item
CREATE TABLE product_item (
    product_item_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    sku VARCHAR(100) UNIQUE NOT NULL,
    price DECIMAL(10, 2),
    color_id INT,
    size_option_id INT,
    stock_quantity INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES product(product_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (color_id) REFERENCES color(color_id) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (size_option_id) REFERENCES size_option(size_option_id) ON UPDATE CASCADE ON DELETE SET NULL
);

-- Table: product_image
