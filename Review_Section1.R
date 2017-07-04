## What does each section do?


## 1. 
library(tidyverse)

## 2.
setwd("~/Dropbox/Teaching/R for Social Sciences/Data/")

## 3.
d = read.csv("WideFormat_TheOffice.csv") %>%
  mutate(Sex = factor(Sex))

## 4.
summary(d)

## 5.
d %>%
  group_by(Sex) %>%
  summarize(Dep = mean(Depr1, na.rm=TRUE),
            DepSD = sd(Depr1, na.rm=TRUE))

## 6.
d2 = d %>%
  select(Name, Sex, Income, Awkward1, Awkward2, Prod1, Prod2, Depr1, Depr2) %>%
  as.data.frame %>%
  reshape(varying = list(c("Awkward1", "Awkward2"), c("Prod1", "Prod2"),
                         c("Depr1", "Depr2")),
          direction = "long",
          v.names = c("Awkward", "Prod", "Depr"),
          timevar = "Time",
          idvar = "Name") %>%
  arrange(Name, Time)

## 7. 
d2$Name

## 8. 
d2$Sex * 3

## 9.
## You only want those that had high Depression scores across both waves.
## How would you subset your data to analyze just those individuals?

## 10.
## You quickly want to analyze the distribution of the Productivity variable across both waves.
## What are some ways that you could visualize it?
