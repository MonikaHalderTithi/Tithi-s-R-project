#install.packaeges
install.packages("tydeverse")
install.packages("readxl")
install.packages("gtsummary")
install.packages("gt")
install.packages("sjPlot")
install.packages("ggpubr")
install.packages("RcolorBrewer")
install.packages("viridis")
install.packages("ggthemes")
install.packages("ggplot2")
install.packages("viridislite")
install.packages("easystats")
install.packages("dplyr")
install.packages("naniar")

#Laod Packages

library(tidyverse)
library(readxl)
library(gtsummary)
library(gt)
library(sjPlot)
library(ggpubr)
library(RColorBrewer)
library(viridis)
library(ggthemes)
library(ggplot2)
library(viridisLite)
library(easystats)
library(naniar)

#import data set

AMR_KAP_Data <- read_excel("data/AMR_KAP_Data.xlsx")
View(AMR_KAP_Data)

#table1: demographic characteristics of study patients

 
AMR_KAP_Data |>
  select(1:11) |>
  tbl_summary(missing = "no", statistic = list(all_continuous() ~ "{mean}±{sd}")) |>
 as_gt() |>
gtsave("table/table011.docx")


#Table -2
AMR_KAP_Data |>
  select(41:49) |>
  tbl_summary() |>
  as_gt() |>
  gtsave("table/table2.docx")



#table -3

AMR_KAP_Coded_3_ <- read_excel("data/AMR_KAP_Coded (3).xlsx", sheet = 2, skip = 0, col_names = T)
View(AMR_KAP_Coded_3_)

head(AMR_KAP_Coded_3_)
AMR_KAP_Coded_3_ |>
  select(Knowledge_Level, Attitude_Level, Practice_Level) |>
  tbl_summary() |>
  as_gt() |>
  gtsave("table/table3.docx")





