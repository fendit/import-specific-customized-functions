# Storing Customized Functions for multiple scripts

print("Loading libraries, functions and data - please wait.")

# analysis_1 --------------------------------------------------------------

# Import libraries, variables/data and functions for analysis_1.R via the following if statement
if (basename(rstudioapi::documentPath())=='analysis_1.R'){
  # Libraries
  library(tidyverse)
  library(dplyr)
  
  # Import Data
  analysis_1.data=mtcars
  
  # Functions for analysis_1  
  analysis_1.foo_1 <- function(){}
  
  analysis_1.foo_2 <- function(){}
  
  # Reminder
  print("Libraries, functions and data for analysis_1.R are ready.")
}


# analysis_2 --------------------------------------------------------------

# Import libraries, variables/data and functions for analysis_2.R via the following if statement
if (basename(rstudioapi::documentPath())=='analysis_2.R'){
  # Libraries
  library(ggplot2)
  library(openxlsx)
  
  # Variables
  analysis_2.x='Hello World!'
  
  # Functions
  analysis_2.foo_1 <- function(){}
  
  analysis_2.foo_2 <- function(){}
  
  # Reminder
  print("Libraries, functions and data for analysis_2.R are ready.")
}