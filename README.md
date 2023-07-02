# Project "Flavor" Notebook

# Author: Vansh Bataviya

# Introduction

Project "Flavor" utilizes the "80 Cereals" dataset, which consists of 77 entries with 16 measured variables. The goal of this project is to analyze the dataset using statistical methods and draw meaningful conclusions. This README provides an overview of the project, including its background, questions to be answered, and the methods and results obtained.

# Background

The study of statistics allows us to make sense of large amounts of data and derive meaningful insights. In this project, we leverage statistical methods to analyze the "80 Cereals" dataset.
The "80 Cereals" dataset, compiled by Chris Crawford and cleaned by Petra Isenberg, Pierre Dragicevic, and Yvonne Jansen, serves as the basis for our analysis. This dataset provides valuable insights into the nutritional content of cereals, supporting research and decision-making in the food industry.

# Questions to be Answered

The project aims to answer the following questions through data analysis:
* Does the amount of protein have an effect on ratings?
* Does the amount of sugar in the cereal have an effect on ratings?
* Does the number of calories in the cereal have an effect on ratings?
* Does the amount of vitamins in the cereal have an effect on ratings?
* Can we use the answers to these questions to predict a person's rating for a cereal effectively?

# Methods and Results

The project involves the following steps and visual representations:
* Initializing the required libraries and loading the dataset.
* Displaying the data using the head() function.
* Creating a correlation plot to examine the relationships between variables.
* Generating scatter plots and regression lines to analyze the relationships between rating and various factors such as protein, sugars, calories, and vitamins.
* Creating a box plot to explore the relationship between rating and vitamins.
* Building a linear model to predict ratings based on sugars, protein, calories, and vitamins.
* Summarizing the findings and drawing conclusions.
* The project provides graphical representations such as correlation plots, scatter plots, box plots, and a linear model to analyze and interpret the data effectively.

# Usage

To use this project, follow these steps:
* Install the required libraries: plyr, dplyr, tidyr, corrplot, ggplot2, tidyverse, psych, and ggpubr.
* Load the dataset using the provided code snippet.
* Explore the data using the head() function and examine the column names using colnames().
* Follow the code snippets provided to generate correlation plots, scatter plots, box plots, and a linear model.
* Interpret the results and draw conclusions based on the findings.

# Conclusion

In conclusion, this project utilizes statistical methods to analyze the "80 Cereals" dataset and investigate the impact of various factors on cereal ratings. The results indicate a clear relationship between sugars, protein, calories, and ratings. The findings can be extended to larger populations and further research can explore the nutritional content of cereals and its impact on health and weight management.

# References

“80 Cereals.” Kaggle, 24 Oct. 2017, [https://www.kaggle.com/datasets/crawford/80-cereals?search=cereal](url)
