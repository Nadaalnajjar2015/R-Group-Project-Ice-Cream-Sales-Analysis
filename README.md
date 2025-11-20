📊 Ice Cream Sales Analysis – R Project

This project analyzes monthly ice cream sales data using R. It demonstrates essential data science skills including data loading, preprocessing, exploratory analysis, data structures, control structures, and visualization.

📁 Project Overview

The goal of this project is to:

Load and inspect a dataset of monthly ice cream sales

Clean and preprocess the data

Work with R data structures (vectors, lists, data frames)

Apply basic statistical calculations

Use loops and conditional statements

Visualize sales trends using histograms and bar plots

The dataset contains monthly sales units and dates for one year.

📂 Dataset

File: ice_cream_sales.csv
Columns:

DATE – Month and year

IPN31152N – Monthly ice cream units sold (renamed later)

🔧 Key Steps in the Script
1. Load & Explore Data

Read the CSV file

View dataset structure

Preview the first rows

2. Data Preprocessing

Convert DATE column to Date type

Rename sales column to:

monthly_units_sold


Round sales values

Check for missing values

3. Exploratory Analysis

Histogram of monthly sales

Total yearly sales calculation

4. Data Structures in R

Vector of month names

List combining months & sales

Data frame created from list elements

5. Accessing Data

Get monthly sales by month name

Access list and data frame elements

6. Control Structures

for-loop to print monthly sales

if-else to compare sales to average

7. Visualization

Bar plot showing sales per month using:

barplot(sales_data$MonthlySales,
        names.arg = sales_data$Month,
        main = "Total Sales for Each Month",
        xlab = "Month",
        ylab = "Total Sales (Units)",
        col = "skyblue",
        las = 2)

📈 Outputs

✔ Cleaned dataset
✔ Histogram of monthly ice cream sales
✔ Bar plot comparing monthly sales
✔ Summary statistics
✔ Sales comparisons relative to average

🛠 Technologies Used

R Language

Base R functions

Basic visualization (hist, barplot)

📌 How to Run

Install R

Place ice_cream_sales.csv in your working directory

Run the provided .R script

View outputs in the R console and plot window

📬 Author

Nada Alnajjar — Data Science & Analysis Student
https://github.com/Nadaalnajjar2015
