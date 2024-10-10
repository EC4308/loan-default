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
