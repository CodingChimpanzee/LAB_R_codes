# This is just seeing the faster tendency in PA task(when sound is given)

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


#Phasic Alertness tendency in accuracy

#PPC tDCS PA ACC value
PA_PPC <- NULL

#Sham tDCS PA ACC value
PA_N <- NULL


# For BJS-1 and BJS-2
BJS_1_PA <- NULL
setwd(paste0("CSV_DATA/BJS-1"))
for(file in BJS_1){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  BJS_1_PA <- rbind(BJS_1_PA, temp)
}
PA_N <- rbind(PA_N, BJS_1_PA)
BJS_2_PA <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/BJS-2")
for(file in BJS_2){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  BJS_2_PA <- rbind(BJS_2_PA, temp)
}
PA_PPC <- rbind(PA_PPC, BJS_2_PA)
#------------------------------------------------------------------------------#
CHS_1_PA <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/CHS-1")
for(file in CHS_1){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  CHS_1_PA <- rbind(CHS_1_PA, temp)
}
#PA_PPC <- rbind(PA_PPC, CHS_1_PA)
CHS_2_PA <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/CHS-2")
for(file in CHS_2){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  CHS_2_PA <- rbind(CHS_2_PA, temp)
}
PA_PPC <- rbind(PA_PPC, CHS_2_PA)
#------------------------------------------------------------------------------#
HYB_1_PA <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/HYB-1")
for(file in HYB_1){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  HYB_1_PA <- rbind(HYB_1_PA, temp)
}
PA_N <- rbind(PA_N, HYB_1_PA)
#------------------------------------------------------------------------------#
JMS_1_PA <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/JMS-1")
for(file in JMS_1){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  JMS_1_PA <- rbind(JMS_1_PA, temp)
}
PA_N <- rbind(PA_N, JMS_1_PA)
JMS_2_PA <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/JMS-2")
for(file in JMS_2){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  JMS_2_PA <- rbind(JMS_2_PA, temp)
}
PA_PPC <- rbind(PA_PPC, JMS_2_PA)
#------------------------------------------------------------------------------#
KDY_1_PA <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/KDY-1")
for(file in KDY_1){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  KDY_1_PA <- rbind(KDY_1_PA, temp)
}
PA_N <- rbind(PA_N, KDY_1_PA)
KDY_2_PA <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/KDY-2")
for(file in KDY_2){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  KDY_2_PA <- rbind(KDY_2_PA, temp)
}
PA_PPC <- rbind(PA_PPC, KDY_2_PA)
#------------------------------------------------------------------------------#
KTW_1_PA <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/KTW-1")
for(file in KTW_1){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  KTW_1_PA <- rbind(KTW_1_PA, temp)
}
PA_PPC <- rbind(PA_PPC, KTW_1_PA)
KTW_2_PA <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/KTW-2")
for(file in KTW_2){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  KTW_2_PA <- rbind(KTW_2_PA, temp)
}
PA_PPC <- rbind(PA_PPC, KTW_2_PA)
#------------------------------------------------------------------------------#
LEC_1_PA <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/LEC-1")
for(file in LEC_1){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  LEC_1_PA <- rbind(LEC_1_PA, temp)
}
PA_N <- rbind(PA_N, LEC_1_PA)
LEC_2_PA <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/LEC-2")
for(file in LEC_2){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  LEC_2_PA <- rbind(LEC_2_PA, temp)
}
PA_PPC <- rbind(PA_PPC, LEC_2_PA)
#------------------------------------------------------------------------------#
LHJ_1_PA <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/LHJ-1")
for(file in LHJ_1){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  LHJ_1_PA <- rbind(LHJ_1_PA, temp)
}
PA_PPC <- rbind(PA_PPC, LHJ_1_PA)
LHJ_2_PA <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/LHJ-2")
for(file in LHJ_2){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  LHJ_2_PA <- rbind(LHJ_2_PA, temp)
}
PA_N <- rbind(PA_N, LHJ_2_PA)
#------------------------------------------------------------------------------#
LKS_1_PA <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/LKS-1")
for(file in LKS_1){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  LKS_1_PA <- rbind(LKS_1_PA, temp)
}
PA_N <- rbind(PA_N, LKS_1_PA)
LKS_2_PA <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/LKS-2")
for(file in LKS_2){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  LKS_2_PA <- rbind(LKS_2_PA, temp)
}
PA_PPC <- rbind(PA_PPC, LKS_2_PA)
#------------------------------------------------------------------------------#
OSH_1_PA <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/OSH-1")
for(file in OSH_1){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  OSH_1_PA <- rbind(OSH_1_PA, temp)
}
PA_PPC <- rbind(PA_PPC, OSH_1_PA)
OSH_2_PA <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/OSH-2")
for(file in OSH_2){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  OSH_2_PA <- rbind(OSH_2_PA, temp)
}
PA_PPC <- rbind(PA_PPC, OSH_2_PA)
#------------------------------------------------------------------------------#
PSY_1_PA <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/PSY-1")
for(file in PSY_1){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  PSY_1_PA <- rbind(PSY_1_PA, temp)
}
PA_PPC <- rbind(PA_PPC, PSY_1_PA)
PSY_2_PA <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/PSY-2")
for(file in PSY_2){
  temp <- fread(file, header=T)
  temp <- (temp)[,
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
  PSY_2_PA <- rbind(PSY_2_PA, temp)
}
PA_PPC <- rbind(PA_PPC, PSY_2_PA)
#------------------------------------------------------------------------------#
PA_PPC <- PA_PPC[, 
                 .(accuracy = (sum(accuracy)/13)),
                 by = Trial]
PA_N <- PA_N[, 
             .(accuracy = (sum(accuracy)/7)),
             by = Trial]

# Bar plot comparing of PA_PPC and PA_N
barplot(accuracy~Trial, PA_PPC)
barplot(accuracy~Trial, PA_N)
