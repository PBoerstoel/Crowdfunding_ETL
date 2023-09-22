-- contacts table
CREATE TABLE contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR UNIQUE
);
-- campaign table
CREATE TABLE campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT REFERENCES contacts(contact_id),
    company_name VARCHAR,
    description TEXT,
    goal VARCHAR,
    pledged VARCHAR,
    outcome VARCHAR,
    backers_count INT,
    country VARCHAR,
    currency VARCHAR,
    launched_date DATE,
    end_date DATE
);

-- category table
CREATE TABLE category (
    category_id SERIAL PRIMARY KEY,
    category VARCHAR UNIQUE
);

-- subcategory table
CREATE TABLE subcategory (
    subcategory_id SERIAL PRIMARY KEY,
    subcategory VARCHAR UNIQUE
);