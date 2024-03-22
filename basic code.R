### Basic Code

oats_data<-read.csv("C:/Users/SamDumble/Documents/R Webinar/oats.csv")

boxplot(yield~gen,oats_data)

library(tidyverse)
oats_data %>%
  group_by(env,year,gen) %>%
  summarise(n=n(),mean=mean(yield),sd=sd(yield))

model1<-lm(yield~gen*year*env,data=oats_data)

summary(model1)

anova(model1)

#Hurray we have done our analysis!

#Only it is incorrect, has messy output, is hard to interpret, and we don't really understand what we have done
#If all we care about is getting some (wrong) p-values then this is OK I suppose; but we can do a whole lot better!