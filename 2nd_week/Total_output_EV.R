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
                 by = Trial]
  BJS_1_EV <- cbind(BJS_1_EV, temp)
}
EV <- cbind(EV, BJS_1_EV)
EV_N <- cbind(EV_N, BJS_1_EV)
BJS_2_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/BJS-2")
for(file in BJS_2){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
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
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  CHS_1_EV <- cbind(CHS_1_EV, temp)
}
EV <- cbind(EV, CHS_1_EV)
EV_PPC <- cbind(EV_PPC, CHS_1_EV)
CHS_2_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/CHS-2")
for(file in CHS_2){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  CHS_2_EV <- cbind(CHS_2_EV, temp)
}
EV <- cbind(EV, CHS_2_EV)
EV_PPC <- cbind(EV_PPC, CHS_2_EV)
#------------------------------------------------------------------------------#
HYB_1_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/HYB-1")
for(file in HYB_1){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  HYB_1_EV <- cbind(HYB_1_EV, temp)
}
EV <- cbind(EV, HYB_1_EV)
EV_N <- cbind(EV_N, HYB_1_EV)

#------------------------------------------------------------------------------#
JMS_1_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/JMS-1")
for(file in JMS_1){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  JMS_1_EV <- cbind(JMS_1_EV, temp)
}
EV <- cbind(EV, JMS_1_EV)
EV_N <- cbind(EV_N, JMS_1_EV)
JMS_2_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/JMS-2")
for(file in JMS_2){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  JMS_2_EV <- cbind(JMS_2_EV, temp)
}
EV <- cbind(EV, JMS_2_EV)
EV_PPC <- cbind(EV_PPC, JMS_2_EV)
#------------------------------------------------------------------------------#
KDY_1_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/KDY-1")
for(file in KDY_1){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  KDY_1_EV <- cbind(KDY_1_EV, temp)
}
EV <- cbind(EV, KDY_1_EV)
EV_N <- cbind(EV_N, KDY_1_EV)
KDY_2_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/KDY-2")
for(file in KDY_2){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  KDY_2_EV <- cbind(KDY_2_EV, temp)
}
EV <- cbind(EV, KDY_2_EV)
EV_PPC <- cbind(EV_PPC, KDY_2_EV)
#------------------------------------------------------------------------------#
KTW_1_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/KTW-1")
for(file in KTW_1){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  KTW_1_EV <- cbind(KTW_1_EV, temp)
}
EV <- cbind(EV, KTW_1_EV)
EV_PPC <- cbind(EV_PPC, KTW_1_EV)
KTW_2_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/KTW-2")
for(file in KTW_2){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  KTW_2_EV <- cbind(KTW_2_EV, temp)
}
EV <- cbind(EV, KTW_2_EV)
EV_PPC <- cbind(EV_PPC, KTW_2_EV)
#------------------------------------------------------------------------------#
LEC_1_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/LEC-1")
for(file in LEC_1){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  LEC_1_EV <- cbind(LEC_1_EV, temp)
}
EV <- cbind(EV, LEC_1_EV)
EV_N <- cbind(EV_N, LEC_1_EV)
LEC_2_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/LEC-2")
for(file in LEC_2){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  LEC_2_EV <- cbind(LEC_2_EV, temp)
}
EV <- cbind(EV, LEC_2_EV)
EV_PPC <- cbind(EV_PPC, LEC_2_EV)
#------------------------------------------------------------------------------#
LHJ_1_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/LHJ-1")
for(file in LHJ_1){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  LHJ_1_EV <- cbind(LHJ_1_EV, temp)
}
EV <- cbind(EV, LHJ_1_EV)
EV_PPC <- cbind(EV_N, LHJ_1_EV)
LHJ_2_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/LHJ-2")
for(file in LHJ_2){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  LHJ_2_EV <- cbind(LHJ_2_EV, temp)
}
EV <- cbind(EV, LHJ_2_EV)
EV_N <- cbind(EV_N, LHJ_2_EV)
#------------------------------------------------------------------------------#
LKS_1_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/LKS-1")
for(file in LKS_1){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  LKS_1_EV <- cbind(LKS_1_EV, temp)
}
EV <- cbind(EV, LKS_1_EV)
EV_PPC <- cbind(EV_PPC, LKS_1_EV)
LKS_2_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/LKS-2")
for(file in LKS_2){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  LKS_2_EV <- cbind(LKS_2_EV, temp)
}
EV <- cbind(EV, LKS_2_EV)
EV_N <- cbind(EV_N, LKS_2_EV)
#------------------------------------------------------------------------------#
OSH_1_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/OSH-1")
for(file in OSH_1){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  OSH_1_EV <- cbind(OSH_1_EV, temp)
}
EV <- cbind(EV, OSH_1_EV)
EV_PPC <- cbind(EV_PPC, OSH_1_EV)
OSH_2_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/OSH-2")
for(file in OSH_2){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  OSH_2_EV <- cbind(OSH_2_EV, temp)
}
EV <- cbind(EV, OSH_2_EV)
EV_PPC <- cbind(EV_PPC, OSH_2_EV)
#------------------------------------------------------------------------------#
PSY_1_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/PSY-1")
for(file in PSY_1){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  PSY_1_EV <- cbind(PSY_1_EV, temp)
}
EV <- cbind(EV, PSY_1_EV)
EV_PPC <- cbind(EV_PPC, PSY_1_EV)
PSY_2_EV <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/PSY-2")
for(file in PSY_2){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  PSY_2_EV <- cbind(PSY_2_EV, temp)
}
EV <- cbind(EV, PSY_2_EV)
EV_PPC <- cbind(EV_PPC, PSY_2_EV)
#------------------------------------------------------------------------------#

#write.csv(EV_PPC, "C:/Users/Biocomputing/Documents/CSV_DATA/EV_PPC.csv")
EV_PPC <- fread("C:/Users/Biocomputing/Documents/CSV_DATA/EV_PPC.csv",
                header = T)

#write.csv(EV_N, "C:/Users/Biocomputing/Documents/CSV_DATA/EV_N.csv")
EV_N <- fread("C:/Users/Biocomputing/Documents/CSV_DATA/EV_N.csv",
             header = T)

# Bar plot comparing of EV_PPC and EV_N

barplot(RT~Blocks, EV_PPC)
barplot(RT~Blocks, EV_N)
