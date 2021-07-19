# See phasic alertness task accuracy difference in session period (for 11 participants)

#import library
library(data.table)
library(ggplot2)
setwd("C:/Users/Biocomputing/Documents")

block <- fread("C:/Users/Biocomputing/Documents/CSV_DATA/inspection_blocks.csv", header = T)
Part_N <- fread("C:/Users/Biocomputing/Documents/CSV_DATA/Participants_N.csv", header = T)
Part_PPC <- fread("C:/Users/Biocomputing/Documents/CSV_DATA/Participants_PPC.csv", header = T)

#import files
S1_N <- list.files("CSV_DATA/Session_1_N")
S1_PPC <- list.files("CSV_DATA/Session_1_PPC")

S2_N <- list.files("CSV_DATA/Session_2_N")
S2_PPC <- list.files("CSV_DATA/Session_2_PPC")

S3_N <- list.files("CSV_DATA/Session_3_N")
S3_PPC <- list.files("CSV_DATA/Session_3_PPC")

S4_N <- list.files("CSV_DATA/Session_4_N")
S4_PPC <- list.files("CSV_DATA/Session_4_PPC")

S5_N <- list.files("CSV_DATA/Session_5_N")
S5_PPC <- list.files("CSV_DATA/Session_5_PPC")

S6_N <- list.files("CSV_DATA/Session_6_N")
S6_PPC <- list.files("CSV_DATA/Session_6_PPC")

#Phasic Alertness tendency

#PPC tDCS PA ACC value in Session
PAS_ACC_PPC <- NULL

#Sham tDCS PA ACC value in Session
PAS_ACC_N <- NULL

#------------------------------------------------------------------------------#
# For Session 1
S1_PACC_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_1_N")
for(file in S1_N){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
                 by = Warnsound]
  temp <- abs(temp[1,2]-temp[2,2])
  temp <- as.data.table(temp)
  temp <- setnames(temp, "accuracy", "ACC_mean_diff_each")
  S1_PACC_N <- rbind(S1_PACC_N, temp)
}
PAS_ACC_N <- rbind(PAS_ACC_N, S1_PACC_N)

S1_PACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_1_PPC")
for(file in S1_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
                 by = Warnsound]
  temp <- abs(temp[1,2]-temp[2,2])
  temp <- as.data.table(temp)
  temp <- setnames(temp, "accuracy", "ACC_mean_diff_each")
  S1_PACC_PPC <- rbind(S1_PACC_PPC, temp)
}
PAS_ACC_PPC <- rbind(PAS_ACC_PPC, S1_PACC_PPC)
#------------------------------------------------------------------------------#
# For Session 2
S2_PACC_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_2_N")
for(file in S2_N){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
                 by = Warnsound]
  temp <- abs(temp[1,2]-temp[2,2])
  temp <- as.data.table(temp)
  temp <- setnames(temp, "accuracy", "ACC_mean_diff_each")
  S2_PACC_N <- rbind(S2_PACC_N, temp)
}
PAS_ACC_N <- rbind(PAS_ACC_N, S2_PACC_N)

S2_PACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_2_PPC")
for(file in S2_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
                 by = Warnsound]
  temp <- abs(temp[1,2]-temp[2,2])
  temp <- as.data.table(temp)
  temp <- setnames(temp, "accuracy", "ACC_mean_diff_each")
  S2_PACC_PPC <- rbind(S2_PACC_PPC, temp)
}
PAS_ACC_PPC <- rbind(PAS_ACC_PPC, S2_PACC_PPC)
#------------------------------------------------------------------------------#
# For Session 3
S3_PACC_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_3_N")
for(file in S3_N){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
                 by = Warnsound]
  temp <- abs(temp[1,2]-temp[2,2])
  temp <- as.data.table(temp)
  temp <- setnames(temp, "accuracy", "ACC_mean_diff_each")
  S3_PACC_N <- rbind(S3_PACC_N, temp)
}
PAS_ACC_N <- rbind(PAS_ACC_N, S3_PACC_N)

S3_PACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_3_PPC")
for(file in S3_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
                 by = Warnsound]
  temp <- abs(temp[1,2]-temp[2,2])
  temp <- as.data.table(temp)
  temp <- setnames(temp, "accuracy", "ACC_mean_diff_each")
  S3_PACC_PPC <- rbind(S3_PACC_PPC, temp)
  
}
PAS_ACC_PPC <- rbind(PAS_ACC_PPC, S3_PACC_PPC)
#------------------------------------------------------------------------------#
# For Session 4
S4_PACC_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_4_N")
for(file in S4_N){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
                 by = Warnsound]
  temp <- abs(temp[1,2]-temp[2,2])
  temp <- as.data.table(temp)
  temp <- setnames(temp, "accuracy", "ACC_mean_diff_each")
  S4_PACC_N <- rbind(S4_PACC_N, temp)
}
PAS_ACC_N <- rbind(PAS_ACC_N, S4_PACC_N)

S4_PACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_4_PPC")
for(file in S4_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
                 by = Warnsound]
  temp <- abs(temp[1,2]-temp[2,2])
  temp <- as.data.table(temp)
  temp <- setnames(temp, "accuracy", "ACC_mean_diff_each")
  S4_PACC_PPC <- rbind(S4_PACC_PPC, temp)
}
PAS_ACC_PPC <- rbind(PAS_ACC_PPC, S4_PACC_PPC)
#------------------------------------------------------------------------------#
# For Session 5
S5_PACC_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_5_N")
for(file in S5_N){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
                 by = Warnsound]
  temp <- abs(temp[1,2]-temp[2,2])
  temp <- as.data.table(temp)
  temp <- setnames(temp, "accuracy", "ACC_mean_diff_each")
  S5_PACC_N <- rbind(S5_PACC_N, temp)
}
PAS_ACC_N <- rbind(PAS_ACC_N, S5_PACC_N)

S5_PACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_5_PPC")
for(file in S5_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
                 by = Warnsound]
  temp <- abs(temp[1,2]-temp[2,2])
  temp <- as.data.table(temp)
  temp <- setnames(temp, "accuracy", "ACC_mean_diff_each")
  S5_PACC_PPC <- rbind(S5_PACC_PPC, temp)
}
PAS_ACC_PPC <- rbind(PAS_ACC_PPC, S5_PACC_PPC)
#------------------------------------------------------------------------------#
# For Session 6
S6_PACC_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_6_N")
for(file in S6_N){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
                 by = Warnsound]
  temp <- abs(temp[1,2]-temp[2,2])
  temp <- as.data.table(temp)
  temp <- setnames(temp, "accuracy", "ACC_mean_diff_each")
  S6_PACC_N <- rbind(S6_PACC_N, temp)
}
PAS_ACC_N <- rbind(PAS_ACC_N, S6_PACC_N)

S6_PACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_6_PPC")
for(file in S6_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
                 by = Warnsound]
  temp <- abs(temp[1,2]-temp[2,2])
  temp <- as.data.table(temp)
  temp <- setnames(temp, "accuracy", "ACC_mean_diff_each")
  S6_PACC_PPC <- rbind(S6_PACC_PPC, temp)
}
PAS_ACC_PPC <- rbind(PAS_ACC_PPC, S6_PACC_PPC)
#------------------------------------------------------------------------------#
# Accuracy tendency by sessions
session_bind_PACC_N <- NULL
session_bind_PACC_PPC <- NULL
SR_N <- NULL
SR_PPC <- NULL

#------------------------------------------------------------------------------#
# For Session 1

session_bind_PACC_N <- rbind(session_bind_PACC_N, S1_PACC_N)
session_bind_PACC_PPC <- rbind(session_bind_PACC_PPC, S1_PACC_PPC)

#------------------------------------------------------------------------------#
# For Session 2

session_bind_PACC_N <- rbind(session_bind_PACC_N, S2_PACC_N)
session_bind_PACC_PPC <- rbind(session_bind_PACC_PPC, S2_PACC_PPC)

#------------------------------------------------------------------------------#
# For Session 3

session_bind_PACC_N <- rbind(session_bind_PACC_N, S3_PACC_N)
session_bind_PACC_PPC <- rbind(session_bind_PACC_PPC, S3_PACC_PPC)

#------------------------------------------------------------------------------#
# For Session 4

session_bind_PACC_N <- rbind(session_bind_PACC_N, S4_PACC_N)
session_bind_PACC_PPC <- rbind(session_bind_PACC_PPC, S4_PACC_PPC)

#------------------------------------------------------------------------------#
# For Session 5

session_bind_PACC_N <- rbind(session_bind_PACC_N, S5_PACC_N)
session_bind_PACC_PPC <- rbind(session_bind_PACC_PPC, S5_PACC_PPC)

#------------------------------------------------------------------------------#
# For Session 6

session_bind_PACC_N <- rbind(session_bind_PACC_N, S6_PACC_N)
session_bind_PACC_PPC <- rbind(session_bind_PACC_PPC, S6_PACC_PPC)


# bind using cbind function
session_bind_PACC_N <- cbind(block, session_bind_PACC_N, Part_N)
session_bind_PACC_PPC <- cbind(block, session_bind_PACC_PPC, Part_PPC)
#------------------------------------------------------------------------------#
# ACC tendency between sessions (in graphs)

# SHAM Stimulation
g1 <- ggplot(data = session_bind_PACC_N,
             aes(x = Blocks, y = ACC_mean_diff_each, group = Participants_N, color = Participants_N)) + geom_line(size=1)
g1 <- g1 + geom_point(size = 3)
g1 <- g1 + ggtitle("SHAM stimulation accuracy in phasic alertness task") + theme(plot.title = element_text(hjust=0.5))
plot(g1)

# PPC Stimulation
g2 <- ggplot(data = session_bind_PACC_PPC,
             aes(x = Blocks, y = ACC_mean_diff_each, group = Participants_PPC, color = Participants_PPC)) + geom_line(size=1)
g2 <- g2 + geom_point(size = 3)
g2 <- g2 + ggtitle("PPC stimulation accuracy in phasic alertness task") + theme(plot.title = element_text(hjust=0.5))
plot(g2)