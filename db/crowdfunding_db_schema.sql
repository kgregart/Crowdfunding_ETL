-- Drop the database if it already exists
DROP DATABASE IF EXISTS crowdfunding_db;

-- Create the crowdfunding_db database
CREATE DATABASE crowdfunding_db;

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(255),
    description TEXT,
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(100),
    currency VARCHAR(3),
    launched_date TIMESTAMP,
    end_date TIMESTAMP,
    category_id INT,
    subcategory_id INT,
    FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
    FOREIGN KEY (category_id) REFERENCES category (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

CREATE TABLE category (
    category_id INT PRIMARY KEY,
    category VARCHAR(255)
);

CREATE TABLE subcategory (
    subcategory_id INT PRIMARY KEY,
    subcategory VARCHAR(255)
);

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(255)
);
