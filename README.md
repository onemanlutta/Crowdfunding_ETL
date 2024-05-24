# Crowdfunding ETL Project

## Project Overview
This project involves building an ETL (Extract, Transform, Load) pipeline using Python, Pandas, and either Python dictionary methods or regular expressions. The objective is to transform data from Excel files into a structured format, create CSV files, design an ERD (Entity-Relationship Diagram), and import the data into a PostgreSQL database.

## Contributors
- Eunice Mwangi
- Maero Lutta

## Project Structure
The project is divided into the following sections:
1. **Create the Category and Subcategory DataFrames**
2. **Create the Campaign DataFrame**
3. **Create the Contacts DataFrame**
4. **Create the Crowdfunding Database**

## The Task

### 1. Create the Category and Subcategory DataFrames
- Extract unique categories and subcategories from `crowdfunding.xlsx`.
- Create `category_id` and `subcategory_id` columns with entries `cat1` to `catn` and `subcat1` to `subcatn`.
- Export the DataFrames as `category.csv` and `subcategory.csv`.

### 2. Create the Campaign DataFrame
- Extract and transform relevant columns from `crowdfunding.xlsx`.
- Convert `goal` and `pledged` to float data types.
- Convert `launched_at` and `deadline` to datetime format.
- Map `category_id` and `subcategory_id` using the category and subcategory DataFrames.
- Export the DataFrame as `campaign.csv`.

### 3. Create the Contacts DataFrame
Choose one of the following methods:
- **Option 1: Python Dictionary Methods**
  - Convert each row to a dictionary.
  - Extract and transform data.
  - Split names into `first_name` and `last_name`.
  - Export the DataFrame as `contacts.csv`.

- **Option 2: Regular Expressions**
  - Extract data using regular expressions.
  - Split names into `first_name` and `last_name`.
  - Export the DataFrame as `contacts.csv`.

### 4. Create the Crowdfunding Database
- Sketch an ERD.
- Create table schemas and save as `crowdfunding_db_schema.sql`.
- Create a PostgreSQL database `crowdfunding_db`.
- Execute the schema file to create tables.
- Import CSV data into the database.
- Verify data with `SELECT *` statements.

## Project Files and Outputs

### Files
- `ETL_Mini_Project_starter_code.ipynb`: Jupyter notebook containing the starter code for the ETL pipeline.
- `crowdfunding.xlsx`: Excel file with the crowdfunding data.
- `contacts.xlsx`: Excel file with the contact data.
- `category.csv`: CSV file containing the transformed category data.
- `subcategory.csv`: CSV file containing the transformed subcategory data.
- `campaign.csv`: CSV file containing the transformed campaign data.
- `contacts.csv`: CSV file containing the transformed contact data.
- `crowdfunding_db_schema.sql`: SQL file containing the database schema for the PostgreSQL database.
- `crowdfunding_db_dml.sql`: SQL file containing the database manipulation codes in SQL.
- `crowdfunding_db.sql`: SQL backup of the database.

### Outputs
- **Category DataFrame (`category.csv`)**:
  - `category_id`: Sequential IDs from `cat1` to `catn`.
  - `category`: Unique category titles.

- **Subcategory DataFrame (`subcategory.csv`)**:
  - `subcategory_id`: Sequential IDs from `subcat1` to `subcatn`.
  - `subcategory`: Unique subcategory titles.

- **Campaign DataFrame (`campaign.csv`)**:
  - `cf_id`, `contact_id`, `company_name`, `description`, `goal`, `pledged`, `outcome`, `backers_count`, `country`, `currency`, `launch_date`, `end_date`, `category_id`, `subcategory_id`.

- **Contacts DataFrame (`contacts.csv`)**:
  - `contact_id`, `first_name`, `last_name`, `email`.

- **Database Schema (`crowdfunding_db_schema.sql`)**:
  - Schema file used to create the PostgreSQL database with the appropriate tables, primary keys, and foreign keys.
 
### Topline Results

**Extraction and Transformation Outputs**
1. Category Table

<img width="190" alt="category_DataFrame" src="https://github.com/onemanlutta/Crowdfunding_ETL/assets/118937365/4253ccc4-6fe9-47b6-828b-763b971479b1">

Category

2. Subcategory Table

<img width="250" alt="subcategory_DataFrame" src="https://github.com/onemanlutta/Crowdfunding_ETL/assets/118937365/2e35a878-b487-4cfc-8e34-90569c8ef380">

Subcategory

3. Contacts Table

<img width="415" alt="contact_DataFrame_final" src="https://github.com/onemanlutta/Crowdfunding_ETL/assets/118937365/5b565413-0208-48fc-986b-8e0b5576be43">

Contacts

4. Campaign Table

<img width="1074" alt="campaign_DataFrame" src="https://github.com/onemanlutta/Crowdfunding_ETL/assets/118937365/67d5bdd3-812e-48f8-a7fb-12c5f79803f9">

Campaign


** Data Modeling and Loading**

1. Entity Relationship Diagram

![crowdfunding_db_ERD](https://github.com/onemanlutta/Crowdfunding_ETL/assets/118937365/d5e41b20-b8e5-4c96-844d-94f1b8d2a405)

ERD

2. Creating Database & Tables

![Creating Tables](https://github.com/onemanlutta/Crowdfunding_ETL/assets/118937365/141c2c82-9c36-46bd-9a09-ec956548fde6)

Tables

3. Importing Data

![Importing Subcategory Data](https://github.com/onemanlutta/Crowdfunding_ETL/assets/118937365/100d3dee-0ad8-4300-bf97-fbee9a97dba0)

Importing

4. View Data

![Loaded Campaign Data](https://github.com/onemanlutta/Crowdfunding_ETL/assets/118937365/399e68c4-12a6-495d-a4ea-a6d23f8c4bf7)

SELECT statement





## References
Data for this dataset was generated by edX Boot Camps LLC and is intended for educational purposes only.
