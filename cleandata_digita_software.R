rm(list=ls())
library(readr)

digital_software <- read_tsv('Digital_Software.tsv')

test_data<-digital_software[c(4,7,8,12,15)]
test_data0<-subset(test_data,digital_software$verified_purchase=="Y")
test_data0<-na.omit(test_data0)

library(dplyr)

ds_grp_region = test_data0 %>% group_by(product_id)  %>%
  summarise(mean_star_rating = mean(star_rating),
            .groups = 'drop')

View(ds_grp_region)
