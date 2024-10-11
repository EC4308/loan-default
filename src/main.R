library(readr)
library(tidyverse)


lc_loan <- read_csv("loan-default/data/lc_loan.csv")
lc_2016_2017 <- read.csv("loan-default/data/lc_2016_2017.csv")

# Get the head of lc_loan
head(lc_loan)

# Get the column names from both dataframes
lc_loan_cols <- colnames(lc_loan)
lc_2016_2017_cols <- colnames(lc_2016_2017)

# Compare the columns to find the differences
diff_cols <- setdiff(lc_loan_cols, lc_2016_2017_cols)
diff_cols_2 <- setdiff(lc_2016_2017_cols, lc_loan_cols)

# Display the differences
cat("Columns in 'lc_loan' but not in 'lc_2016_2017':", diff_cols, "\n")
cat("Columns in 'lc_2016_2017' but not in 'lc_loan':", diff_cols_2, "\n")


# Remove columns that are not common between the two dataframes
lc_loan_clean <- lc_loan %>% select(-all_of(diff_cols))
lc_2016_2017_clean <- lc_2016_2017 %>% select(-all_of(diff_cols_2))

# Now, bind the rows together after ensuring they have the same columns
combined_data <- bind_rows(lc_loan_clean, lc_2016_2017_clean)



# View the combined dataset
glimpse(combined_data)

## Wan Ting + ZH
# Index loan status to 0 = Fully paid + Current, 1 = Late + Charged Off + Late  + Grace period + Default
# Stratify the data based on the loan_status and get ~ 50,000 accordingly
# Rdm suggestion, compare the direct pulling of 50k data points vs stratified (Prof might be interested)
# Label the data


## Brandon + LX
# Include Fed data Last payment date + 3 months

## YH + Grab anyone for help
# Index term to 0 or 1
# Drop grade Adds bias
# Index emp_length -> <1 year = 0
# Replace NA with 0

## Once all is done
# 70/30 Data split
# Save CSV file as combined_data_cleaned.csv

# Future plans
# EDA
# Scale the data for the relevant regressions
# If the output is a probability, then >0.5 = bad loan, else good loan

# Models to be use
# 1. Benchmark model = Decision Tree


