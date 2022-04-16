---
title: "Economic freedom index regression analysis"
output: html_document
---

# Import libraries 

library(tidyverse)
library(rio)
library(janitor)
library(lubridate)
library(ggplot2)
library(fixest)


# Read through CSV

df <- read.csv('data.csv')

# Get a data overlook

str(df) #check type of data
summary(df)

# Change chr to integer
# We only do so for our needed variables

df$Government.Integrity <- as.integer(df$Government.Integrity)
df$Business.Freedom <- as.integer(df$Business.Freedom)
df$Property.Rights <- as.integer(df$Property.Rights)
df$Judicial.Effectiveness <- as.integer(df$Judicial.Effectiveness)

#Summarize the dataframe

summary(df)

# Run fixed effects regression model

feols <- feols(Business.Freedom ~ Property.Rights + Government.Integrity + Judicial.Effectiveness | Index.Year, data=df)

summary(feols)

# Run OLS

ols1 <- lm(Business.Freedom ~ Property.Rights + Government.Integrity + Judicial.Effectiveness, data=df) #robust SE

summary(ols1)


# Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
