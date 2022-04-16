# economic-freedom

# What is this?

This is a regression analysis of the Economic Freedom Index published every year by the [Heritage Foundation](https://www.heritage.org/index/).
This project is for my Algorithms class, in partial fulfillment of my requirements for the degree of master of science in data journalism at Columbia.

# How it works

This is an R file which reads through a CSV file provided for in **raw_data** directory. The code includes fixed effects and ordinary least squares
regression models on select subindices of the annual report.

# What is the data about?

The data measures the so-called "economic freedom" of select countries. More information about the index can be read [here](https://www.heritage.org/index/about). The index is a closely watched report by policymakers and other observers to gauge how open/liberalize a country is
to investors, businesses and traders.

# What is the project

For this repository, we used the subindex **"Business Freedom"** as the dependent variable and ran other subindices such as **Judicial Effectiveness** and
**Property Rights** as independent variables in a regression. The goal is to assess which among these variables best determine business freedom across
territories.

