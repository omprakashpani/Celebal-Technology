# Shopping Dataset Analysis

## Project Overview

This project performs Exploratory Data Analysis (EDA), data cleaning, feature engineering, and visualization on a shopping product dataset using Python and Pandas.

The objective is to understand product pricing, ratings, discounts, category distribution, and customer engagement while preparing the dataset for further analysis.

---

## Dataset

**File Used:** `combined_dataset.csv`

The dataset contains information about products, including:

* Product ID
* Product Title
* Product Description
* Ratings
* Ratings Count
* Initial Price
* Final Price
* Discount
* Category
* Seller Information
* Product Variations
* Customer Reviews

---

## Tools and Libraries Used

* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Jupyter Notebook

---

## Tasks Performed

### 1. Data Loading

* Loaded CSV dataset into a Pandas DataFrame.

### 2. Data Exploration

* Viewed dataset using `head()` and `tail()`
* Checked dataset shape
* Inspected column names
* Examined data types using `info()`
* Generated summary statistics using `describe()`

### 3. Data Cleaning

* Identified missing values
* Filled missing numerical values
* Replaced missing categorical values with appropriate labels
* Checked for duplicate records
* Converted price-related columns into numeric format

### 4. Feature Engineering

Created new features:

#### Price Difference

```
price_difference = initial_price - final_price
```

#### Popularity Metric

```
popularity = rating × ratings_count
```

### 5. Data Analysis

Performed:

* Univariate Analysis
* Bivariate Analysis
* Category-wise Analysis

### 6. Visualization

Generated:

* Rating Distribution Histogram
* Price Distribution Histogram
* Rating vs Popularity Scatter Plot
* Category-wise Bar Chart
* Price Boxplot

---

## Key Insights

* The dataset contains products from multiple categories.
* Most products have ratings between 3.5 and 4.5.
* Discounts significantly reduce product prices.
* Some products receive substantially more customer engagement than others.
* Products with higher ratings generally show greater popularity.
* A few products act as price outliers due to very high prices.

---

## Conclusion

The analysis demonstrates how data cleaning and exploratory data analysis help uncover patterns in product pricing, customer ratings, discounts, and category performance. Feature engineering through popularity and price difference metrics provided additional business insights into product performance and customer engagement.

---

## Project Structure

```
shopping-analysis/
│
├── data/
│   └── combined_dataset.csv
│
├── notebook/
│   └── shopping_analysis.ipynb
│
├── output/
│   └── cleaned_combined_dataset.csv
│
└── README.md
```
