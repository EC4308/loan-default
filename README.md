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

















