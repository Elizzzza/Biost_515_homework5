### BIOST 515 HW5

### Setting up the packages:
library(tidyverse)
library(rigr)

### Q1
### Reading in the data. 
mri <- read_csv("~/Desktop/UW MS Biostat/BIOST Winter 2022/Biost 515/R dataset/mri.csv")
### Fit a logistic model for the response variable death and predictor variables of
### creatinine, age, smoking status, sex, and race
mri <- mri %>% 
  mutate(smoke_smoker = ifelse(packyrs > 1, 1, 0)) %>% 
  mutate(sex_male = ifelse(sex == "Male", 1, 0)) %>% 
  mutate(race_white = ifelse(race == "White", 1, 0)) %>% 
  mutate(race_black = ifelse(race == "Black", 1, 0)) %>% 
  mutate(race_asian = ifelse(race =="Asian", 1, 0))
  
mod1 <- regress("odds", death ~ crt + age + smoke_smoker + sex_male +
                  race_white + race_black + race_asian, data = mri)
mod1 %>% coef %>% round(3)

### Q2
### Here's a logistic model for mri dataset using rigr:regress
### the response variable is death and predictor variables are creatinine, 
### age, smoking status, sex, and race
mod1 %>% coef %>% round(3)
### Fit logistic model for mri dataset using glm
### Full model response variable death and predictor variables of
### creatinine, age, smoking status, sex, and race
mod_full <- glm(death ~ crt + age + smoke_smoker + sex_male + race_white + 
                race_black + race_asian, data = mri, family = "binomial")
### Null model response variable death and predictor variables of
### creatinine, age, smoking status, and sex
mod_null <- glm(death ~ crt + age + smoke_smoker + sex_male, data = mri, 
                family = "binomial")
### Run ANOVA test
anova(mod_null, mod_full, test = "LRT")

### Q4
### Table of Disease (Y) & Exposure (X)
### Y=1 indicate diseases, X=1 indicates exposure
tab1 <- tibble(y=c("X=0", "X=1"),y1=c("a","c"), y2=c("a","c"))
names(tab1) <- c("Number of participants", "Y=0", "Y=1")
