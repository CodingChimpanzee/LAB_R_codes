# This is for EV Tendency
# EV Performance is decreasing
# EV Performance can be sustained by PPC tDCS

#import library
library(data.table)
setwd("C:/Users/Biocomputing/Documents")

#import file
BJS_1 <- list.files("CSV_DATA/BJS-1")
BJS_2 <- list.files("CSV_DATA/BJS-2")

CHS_1 <- list.files("CSV_DATA/CHS-1")
CHS_2 <- list.files("CSV_DATA/CHS-2")

HYB_1 <- list.files("CSV_DATA/HYB-1")

JMS_1 <- list.files("CSV_DATA/JMS-1")
JMS_2 <- list.files("CSV_DATA/JMS-2")

KDY_1 <- list.files("CSV_DATA/KDY-1")
KDY_2 <- list.files("CSV_DATA/KDY-2")

KTW_1 <- list.files("CSV_DATA/KTW-1")
KTW_2 <- list.files("CSV_DATA/KTW-2")

LEC_1 <- list.files("CSV_DATA/LEC-1")
LEC_2 <- list.files("CSV_DATA/LEC-2")

LHJ_1 <- list.files("CSV_DATA/LHJ-1")
LHJ_2 <- list.files("CSV_DATA/LHJ-2")

LHN_1 <- list.files("CSV_DATA/LHN(ONLY_ONE)")

LKS_1 <- list.files("CSV_DATA/LKS-1")
LKS_2 <- list.files("CSV_DATA/LKS-2")

OSH_1 <- list.files("CSV_DATA/OSH-1")
OSH_2 <- list.files("CSV_DATA/OSH-2")

PSY_1 <- list.files("CSV_DATA/PSY-1")
PSY_2 <- list.files("CSV_DATA/PSY-2")

# EV tendency -> check the space bar!

# Total EV
EV <- NULL
# EV in PPC
EV_PPC <- NULL
# Ev in SHAM
EV_N <- NULL


#------------------------------------------------------------------------------#
BJS_1_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/BJS-1")
for(file in BJS_1){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = 1:16]
  BJS_1_EV <- cbind(BJS_1_EV, temp)
}
EV <- cbind(EV, BJS_1_EV)
EV_N <- cbind(EV_N, BJS_1_EV)
BJS_2_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/BJS-2")
for(file in BJS_2){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT))
                 ]
  BJS_2_EV <- cbind(BJS_2_EV, temp)
}
EV <- cbind(EV, BJS_2_EV)
EV_PPC <- cbind(EV_PPC, BJS_2_EV)
#------------------------------------------------------------------------------#
CHS_1_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/CHS-1")
for(file in CHS_1){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT))
                 ]
  CHS_1_EV <- cbind(CHS_1_EV, temp)
}
EV <- cbind(EV, CHS_1_EV)
EV_PPC <- cbind(EV_PPC, CHS_1_EV)
CHS_2_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/CHS-2")
for(file in CHS_2){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT))
                 ]
  CHS_2_EV <- cbind(CHS_2_EV, temp)
}
EV <- cbind(EV, CHS_2_EV)
EV_PPC <- cbind(EV_PPC, CHS_2_EV)

