library(dplyr)
df <- read.csv("owid-co2-data (1).csv") 
names(df) 
df2 <- df[,c("country", "year", "population", "gdp", "co2_per_capita")]
df3 <- filter(df2,!is.na(gdp))
library(ggplot2)
df3<-mutate(df3,gdp_per_capita = gdp/population)
df3

df3 %>%
  filter(country %in% c("Canada", "France", "Germany", "Italy", "Japan", "United Kingdom", "United States"))%>%
  group_by(country) %>% 
  ggplot(mapping = aes(x = gdp_per_capita, y = co2_per_capita))+
  geom_point()
