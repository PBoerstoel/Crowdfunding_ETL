-- contacts table
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR UNIQUE
);

-- category table
CREATE TABLE category (
    category_id VARCHAR PRIMARY KEY,
    category VARCHAR UNIQUE
);

-- subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR PRIMARY KEY,
    subcategory VARCHAR UNIQUE
);

-- campaign table
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT REFERENCES contacts(contact_id),
    company_name VARCHAR,
    description VARCHAR,
    goal DECIMAL,
    pledged DECIMAL,
    outcome VARCHAR,
    backers_count INT,
    country VARCHAR,
    currency VARCHAR,
    launched_date DATE,
    end_date DATE,
	category_id VARCHAR REFERENCES category(category_id),
	subcategory_id VARCHAR REFERENCES subcategory(subcategory_id)
);

-- table checks
SELECT * FROM contacts
SELECT * FROM category
SELECT * FROM subcategory
SELECT * FROM campaign	
