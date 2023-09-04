-- Creating the crowdfunding_db schema

-- dropping the tables if they exist

drop table if exists contacts ;
drop table if exists category;
drop table if exists subcategory;
drop table if exists campaign;

-- Creating a table for contacts assigning the data type and primary key as well as not null constraint 
Create table contacts (
	contact_id INTEGER PRIMARY KEY NOT NULL ,
	first_name varchar(20) NOT NULL,
	last_name varchar(20) NOT NULL ,
	email varchar(90) NOT NULL
);

-- Creating a table for Category assigning the data type and primary key as well as not null constraint 

CREATE TABLE category (
    category_id VARCHAR(50) PRIMARY KEY NOT NULL ,
    category VARCHAR(50)  NOT NULL 
	
);

-- Creating a table for Sub-Category assigning the data type and primary key as well as not null constraint 

CREATE TABLE subcategory (
    subcategory_id VARCHAR(50) PRIMARY KEY NOT NULL ,
    subcategory VARCHAR(50)  NOT NULL 
    
);

-- Creating a table for Campaign assigning the data type and keys (primary and foreign) as well as not null constraint 

CREATE TABLE campaign (
    cf_id INTEGER PRIMARY KEY NOT NULL ,
    contact_id INTEGER  NOT NULL ,
    company_name VARCHAR(50)  NOT NULL ,
    description TEXT  NOT NULL ,
    goal FLOAT  NOT NULL ,
    pledged FLOAT  NOT NULL ,
    outcome VARCHAR(50)  NOT NULL ,
    backers_count INTEGER  NOT NULL ,
    country VARCHAR(50)  NOT NULL ,
    currency VARCHAR(50)  NOT NULL ,
    launched_date DATE  NOT NULL ,
    end_date DATE  NOT NULL ,
    category_id VARCHAR(50)  NOT NULL ,
    subcategory_id VARCHAR(50)  NOT NULL ,
	FOREIGN KEY(contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY(category_id) REFERENCES category (category_id),
	FOREIGN KEY(subcategory_id) REFERENCES subcategory (subcategory_id)
);