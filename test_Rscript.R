#install.packages("readr")
library(readr)
digital_software <- read_tsv('digital_software.tsv')
test_data<-subset(digital_software,digital_software$verified_purchase=="Y")
test_data<-na.omit(test_data)
c_test_data<-test_data[c(2,3,4,5,6,8,9,10,11,15)]
