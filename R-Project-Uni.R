# Load the dataset ----
ice_cream_sales<- read.csv("C:/Users/feelh/OneDrive/Desktop/ice_cream_sales.csv")

# View data
View(ice_cream_sales)
# Check the structure of the data set
str(ice_cream_sales)

# Preview data (first 6 rows)
head(ice_cream_sales)


# Data Preprocessing ----

# Convert the DATE column to Date type
ice_cream_sales$DATE <- as.Date(ice_cream_sales$DATE, format="%m/%d/%Y")  # Adjust the format if necessary
str(ice_cream_sales)

# Rename 'IPN31152N' column to 'Monthly Units Sold'
colnames(ice_cream_sales)[2] <- "monthly_units_sold"


# Check the updated column names
colnames(ice_cream_sales)

# Round the values in monthly_units_sold to integers
ice_cream_sales$monthly_units_sold <- round(ice_cream_sales$monthly_units_sold)

# Check the updated values
head(ice_cream_sales)

# Check for missing values
sum(is.na(ice_cream_sales))



# Histogram to visualize the distribution of monthly ice cream sales
hist(ice_cream_sales$monthly_units_sold,        # Data to plot: monthly units sold
     main = "Histogram of Monthly Ice Cream Sales",  # Title of the plot
     xlab = "Monthly Units Sold",                 # Label for the x-axis
     col = "lightgreen",                          # Color of the bars (light green)
     )                                 




# Variables ----

#Create a variable total_sales_year to store the total sales for the first year.
total_sales_year<- sum(ice_cream_sales$monthly_units_sold)

total_sales_year

# Vectors ----

# Create a vector months containing the names of the months.

Months<-months(ice_cream_sales$DATE)
row.names(ice_cream_sales)<-Months

# Access and print the sales for a specific month (e.g., June).
ice_cream_sales["June","monthly_units_sold"]

# Lists ----
# Create a list sales_list containing Month and TotalSales.
sales_list<- list(Months, ice_cream_sales$monthly_units_sold)
sales_list

# Access and print the total sales using the list.
#To acces the data in the column not the column
sales_list[[2]]
#Summation
sum(sales_list[[2]])

# Data Frames ----
#Build a data frame sales_data from the sales_list.
sales_data<- data.frame(Month= sales_list[[1]],
                        MonthlySales= sales_list[[2]])
sales_data

# Access and print the sales data for a specific month using the data frame.

sales_data[sales_data$Month=="May","MonthlySales"]

# Control Structures ----
# Use a for loop to print the total sales for each month.
for (s in 1:nrow(sales_data)){
  message(sales_data$Month[s]," Total Sales: ",sales_data$MonthlySales[s])
}

# Use an if-else statement to print whether the total sales for each month are above or below the average monthly sales.
avg_sales= mean(sales_list[[2]])
avg_sales
for (s in 1:nrow(sales_data)){
  if(sales_data$MonthlySales[s]>avg_sales)
  message(sales_data$Month[s]," total sales is above the average monthly sales ") else
    message(sales_data$Month[s]," total sales is below the average monthly sales ")
}

# Visualization ----
# Create a bar plot showing total sales for each month.

barplot(sales_data$MonthlySales, sales_data$Month,
        main = "Total Sales for Each Month", xlab = "Month", ylab = "Total Sales (Units)",
        col = "skyblue", las = 2)  # las = 2 rotates the axis labels

#barplot(height, 
        #names.arg = NULL, 
        #beside = FALSE, 
        #col = NULL, 
        #main = NULL, 
        #xlab = NULL, 
        #ylab = NULL, 
        #...)
#1. barplot(sales_data$MonthlySales, ...):
  
#  This is the main function call to create a bar plot.

#sales_data$MonthlySales: This refers to the data for the height of the bars, which are the total sales (or units sold) for each month.



#2. names.arg = sales_data$Month:
  
#  names.arg: This argument specifies the names to be used for each bar. In this case, the Month column from the sales_data data frame will be used for the labels along the x-axis (each bar will represent a different month).



#3. main = "Total Sales for Each Month":
  
#  main: This adds a title to the bar plot. In this case, the title is "Total Sales for Each Month".



#4. xlab = "Month":
  
#  xlab: This sets the label for the x-axis. In this case, it is labeled as "Month".



#5. ylab = "Total Sales (Units)":
  
#  ylab: This sets the label for the y-axis. In this case, it is labeled as "Total Sales (Units)", representing the sales values (units sold) on the y-axis.



#6. col = "skyblue":
  
#  col: This defines the color of the bars in the bar plot. In this case, the bars are colored "skyblue".



#7. las = 2:
  
#  las: This controls the orientation of the axis labels.

#las = 2 rotates the x-axis labels to be vertical (90 degrees). This is especially useful if you have long month names or overlapping labels.




#las = 0: Axis labels are parallel to the axis (default).
#las = 1: Axis labels are horizontal.
#las = 2: Axis labels are vertical.
#las = 3: Axis labels are perpendicular to the axis.
