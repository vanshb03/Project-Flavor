library(plyr); library(dplyr)
library(tidyr)
library(corrplot)
library(ggplot2)
library (tidyverse)
library(psych)
library(ggpubr)

list.files(path = "../input")

cereal <- read.csv("../input/80-cereals/cereal.csv")

head(cereal)
colnames(cereal)

correlationTable <- cereal %>% 
  select(calories, protein, fat, sodium, fiber, carbo, sugars, potass, vitamins, shelf, weight, cups, rating)
  corre <- cor(correlationTable)
corPlot(corre, cex = 1)

cereals_summ <- subset(cereal, select = calories:rating)
pairs(cereals_summ[,1 :13], pch = 19,lower.panel = NULL)

plot(cereal$rating~protein,
     data = cereal,
     xlab="Protein",
     ylab="Rating",
     main="Rating vs Protein",
     col="blue")
abline(lm(cereal$rating~cereal$protein), col="red")

top_sugar <- cereal %>%
  arrange(desc(cereal$sugars))
plot(cereal$rating~sugars,
     data = cereal,
     xlab="Sugars",
     ylab="Rating",
     main="Rating vs Sugars",
     col="blue")
abline(lm(cereal$rating~cereal$sugars), col="red")

ggplot(data = cereal)+
  geom_jitter(mapping = aes(x = rating , y = calories))+
  geom_smooth(mapping= aes(x = rating, y= calories),col="red")+
  labs(title = "The Relationship between Ratings and Calories")

ggplot(data = cereal)+
  geom_jitter(mapping = aes(x= rating , y =sugars))+
  geom_smooth(mapping= aes(x= rating, y= sugars),col="red")+
  labs(title = "The Relationship between Ratings and Sugar")

boxplot(cereal$rating~vitamins,
        data = cereal,
        xlab="Vitamins",
        ylab="Ratings",
        main="Rating vs Vitamins",
        col=c("yellow","red","green"))
top_sugar <- cereal %>%
  arrange(desc(cereal$sugars))

x <- lm(rating ~ sugars+protein+calories+vitamins, data = cereal)
summary(x)
plot(x)