library(dplyr)
library(ggplot2)

df <- read.csv("owid-co2-data (1).csv")
names(df)
df2 <- df[,c("country", "year", "population", "gdp", "co2_per_capita")]
