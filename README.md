# Rice Fintech Homework - 07 - SQL
> Technologies: Python, Postgres, SQL, Plotly

![Credit card fraudster](Assignment-07-SQL/Instructions/Images/credit_card_fraudster.jpg)

*[Credit Card Fraudster by Richard Patterson](https://www.flickr.com/photos/136770128@N07/42252105582/) | [Creative Commons Licensed](https://creativecommons.org/licenses/by/2.0/)*

## Objective

In this homework assignment, I will apply SQL skills to analyze historical credit card transactions and consumption patterns in order to identify possible fraudulent transactions.

## Deliverables

1. **Data Modeling**:
Given the csv files provided, define a database model to store the credit card transaction data and create a new PostgreSQL database using your model.

* [card_holder.csv](Assignment-07-SQL/Instructions/Data/card_holder.csv)
* [credit_card.csv](Assignment-07-SQL/Instructions/Data/credit_card.csv)
* [merchant.csv](Assignment-07-SQL/Instructions/Data/merchant.csv)
* [merchant_category.csv](Assignment-07-SQL/Instructions/Data/merchant_category.csv)
* [transaction.csv](Assignment-07-SQL/Instructions/Data/transaction.csv)

2. **Data Engineering**: 
Create a database schema on PostgreSQL and populate your database from the CSV files provided.

3. **Data Analysis**: 
Analyze the data to identify possible fraudulent transactions.

## Data Modeling

```
cardholder
-
cardholder_id PK int
cardholder_name string INDEX


creditcard
-
creditcard_number PK int
cardholder_id int FK >- cardholder.cardholder_id


merchant
-
merchant_id PK int
merchant_name varchar(120)
category_id int FK >- merchant_category.category_id


merchant_category
-
category_id PK int
category_name varchar(120)


transaction
-
transaction_id PK int
transaction_date date
transaction_amount float
merchant_id FK >- merchant.merchant_id
creditcard_id FK >- creditcard.creditcard_number
```