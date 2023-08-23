library(dplyr)
df <- read.csv("owid-co2-data (1).csv") 
names(df) 
df2 <- df[,c("country", "year", "population", "gdp", "co2_per_capita")]
df3 <- filter(df2,!is.na(gdp))
library(ggplot2)
gdp_per_capita = "gdp"/"population"
