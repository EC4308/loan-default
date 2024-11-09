# Overview

This project develops a machine learning model to predict credit default risk on the LendingClub platform. By accurately identifying high-risk borrowers, the model aims to protect lenders from potential losses, prioritizing high recall to minimize missed defaults.

# Project Objective

The primary objective is to predict borrower defaults with high recall, ensuring minimal false negatives. This will allow lenders to better identify high-risk loans, thereby reducing potential losses while maintaining balanced precision and recall.

# Dataset

The project utilizes LendingClub’s complete loan data from 2007 to 2017, sourced from [Kaggle](https://www.kaggle.com/datasets/husainsb/lendingclub-issued-loans/data).


# Machine Learning Models and Approach

Our approach leverages recent advancements in machine learning to predict credit default:

**Models Used**: Ensemble learning techniques such as random forest and boosted classification (XGBoost), along with Ridge and Lasso classifiers, will be implemented, with simpler models like decision trees and logistic regression as benchmarks.


**Priority**: The model selection and tuning will focus on maximizing recall to minimize false negatives.

# Evaluation Metrics

The model's performance will be assessed based on:

**Recall**: Prioritizing high recall to identify the majority of defaulters accurately.


**Accuracy and Precision**: These metrics will be analyzed to ensure a balanced approach.


**Model Comparison**: The model’s performance will be compared against LendingClub’s existing grading system, aiming to enhance its accuracy in predicting defaults.


# Desired Results 
Our goal is to create a model that improves LendingClub’s credit assessment by accurately predicting loan defaults. This model could assist in reducing lending risks on the platform and improve overall lender confidence through better-informed loan grading.



# Guide to our Github Repository 


To run the code, please either clone the repository using Git: git clone <    >
or download the repository as a zip file and extract it to a location of your choice.

**Running the Project**
These steps should be run in the order below: 


**1. Navigate to the src Folder**

In the main directory of the repository, go to the src folder. This is where all the essential R Markdown files are located.
- data_cleaning.Rmd: Prepares and cleans the dataset.
- main_workbook.Rmd: Houses the main machine learning models and analysis.

**2. Data Cleaning**
Start by running the data_cleaning.Rmd file. This script prepares the dataset by performing necessary cleaning steps to ensure the data is ready for analysis.

**3. Model Training and Analysis**
After cleaning the data, proceed to run main_workbook.Rmd. This file contains the complete workflow for data exploration, model training, and analysis. It includes various machine learning models we've implemented for the project.

**Prerequisites**

Before running the project, make sure to install the following R packages on your local device:

### Required Libraries

```r
install.packages(c("tidyverse", "jsonlite", "lubridate", "zoo", "rpart", 
                   "rpart.plot", "randomForest", "pROC", "caret", "glmnet", 
                   "xgboost", "ParBayesianOptimization", "doParallel")) ```



Feel free to reach out if you encounter any issues or have questions about the setup!


Authors: Brandon, Zhan Heng, Li Xuan, Wan Ting, Yi han
Special Thanks to Prof Denis for his guidance. 
Last Updated: 9 Nov 2024











