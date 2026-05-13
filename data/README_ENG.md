# Source Data

## File `amazon_sales.csv`

This file contains 128,975 records of Amazon sales.

**Data structure:**

| Column | Description |
|---------|-------------|
| `index` | Sequential record number |
| `Order ID` | Unique order identifier |
| `Status` | Order status (Shipped, Cancelled, etc.) |
| `Fulfilment` | Fulfilment method (Amazon, Merchant) |
| `Sales Channel` | Sales channel |
| `ship-service-level` | Delivery service level |
| `Style` | Product style / model |
| `SKU` | Stock keeping unit |
| `Category` | Product category |
| `Size` | Size |
| `ASIN` | Amazon Standard Identification Number |
| `Courier Status` | Courier delivery status |
| `Qty` | Quantity of items |
| `Amount` | Order amount |
| `ship-city` | Delivery city |
| `ship-state` | Delivery state |
| `ship-postal-code` | Postal code |
| `ship-country` | Delivery country |
| `B2B` | Wholesale order (true / false) |
| `promotion-ids` | Promotion identifiers |
| `proper_date` | Sale date (Date type, converted from text field) |

## Why the file is not included in the repository

The `amazon_sales.csv` file exceeds 10 MB and surpasses GitHub's recommended limit for regular files.

## Where to get the data

The dataset was taken from Kaggle: https://www.kaggle.com/datasets/dhananjaylaygude/amazon-sale-report
