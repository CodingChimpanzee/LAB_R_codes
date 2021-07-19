# See phasic alertness task accuracy in session period
# In here, we see relative change between session
# by using fold analysis

#import library
library(data.table)
library(ggplot2)
library(scales)
setwd("C:/Users/Biocomputing/Documents")

PPC <- fread("C:/Users/Biocomputing/Documents/CSV_DATA/PPC.csv", header = T)
Sham <- fread("C:/Users/Biocomputing/Documents/CSV_DATA/Sham.csv", header = T)
block <- fread("C:/Users/Biocomputing/Documents/CSV_DATA/blocks.csv", header = T)

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

SR_N <- rbind(SR_N, S1_PACC_N[,
                              .(sr = sd(ACC_mean_diff_each)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S1_PACC_PPC[,
                                    .(sr = sd(ACC_mean_diff_each)/sqrt(11)),
])

# P value
S1_PACC_N_P <- cbind(Sham ,S1_PACC_N)
S1_PACC_PPC_P <- cbind(PPC ,S1_PACC_PPC)
P1 <- rbind(S1_PACC_N_P, S1_PACC_PPC_P)
res1 <- t.test(ACC_mean_diff_each~tDCS, data=P1,
               paired = TRUE, var.equal = FALSE, alternative = "less")


S1_PACC_N_diff <- S1_PACC_N[,lapply(.SD, mean),]
S1_PACC_PPC_diff <- S1_PACC_PPC[,lapply(.SD, mean),]
S1_PACC_N_diff <- setnames(S1_PACC_N_diff, "ACC_mean_diff_each", "ACC_mean_diff")
S1_PACC_PPC_diff <- setnames(S1_PACC_PPC_diff, "ACC_mean_diff_each", "ACC_mean_diff")

session_bind_PACC_N <- rbind(session_bind_PACC_N, S1_PACC_N_diff)
session_bind_PACC_PPC <- rbind(session_bind_PACC_PPC, S1_PACC_PPC_diff)

#------------------------------------------------------------------------------#
# For Session 2

SR_N <- rbind(SR_N, S2_PACC_N[,
                              .(sr = sd(ACC_mean_diff_each)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S2_PACC_PPC[,
                                    .(sr = sd(ACC_mean_diff_each)/sqrt(11)),
])

# P value
S2_PACC_N_P <- cbind(Sham ,S2_PACC_N)
S2_PACC_PPC_P <- cbind(PPC ,S2_PACC_PPC)
P2 <- rbind(S2_PACC_N_P, S2_PACC_PPC_P)
res2 <- t.test(ACC_mean_diff_each~tDCS, data=P2,
               paired = TRUE, var.equal = FALSE, alternative = "less")

S2_PACC_N_diff <- S2_PACC_N[,lapply(.SD, mean),]
S2_PACC_PPC_diff <- S2_PACC_PPC[,lapply(.SD, mean),]
S2_PACC_N_diff <- setnames(S2_PACC_N_diff, "ACC_mean_diff_each", "ACC_mean_diff")
S2_PACC_PPC_diff <- setnames(S2_PACC_PPC_diff, "ACC_mean_diff_each", "ACC_mean_diff")

session_bind_PACC_N <- rbind(session_bind_PACC_N, S2_PACC_N_diff)
session_bind_PACC_PPC <- rbind(session_bind_PACC_PPC, S2_PACC_PPC_diff)

#------------------------------------------------------------------------------#
# For Session 3

SR_N <- rbind(SR_N, S3_PACC_N[,
                              .(sr = sd(ACC_mean_diff_each)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S3_PACC_PPC[,
                                    .(sr = sd(ACC_mean_diff_each)/sqrt(11)),
])

# P value
S3_PACC_N_P <- cbind(Sham ,S3_PACC_N)
S3_PACC_PPC_P <- cbind(PPC ,S3_PACC_PPC)
P3 <- rbind(S3_PACC_N_P, S3_PACC_PPC_P)
res3 <- t.test(ACC_mean_diff_each~tDCS, data=P3, 
               paired = TRUE, var.equal = FALSE, alternative = "less")

S3_PACC_N_diff <- S3_PACC_N[,lapply(.SD, mean),]
S3_PACC_PPC_diff <- S3_PACC_PPC[,lapply(.SD, mean),]
S3_PACC_N_diff <- setnames(S3_PACC_N_diff, "ACC_mean_diff_each", "ACC_mean_diff")
S3_PACC_PPC_diff <- setnames(S3_PACC_PPC_diff, "ACC_mean_diff_each", "ACC_mean_diff")

session_bind_PACC_N <- rbind(session_bind_PACC_N, S3_PACC_N_diff)
session_bind_PACC_PPC <- rbind(session_bind_PACC_PPC, S3_PACC_PPC_diff)

#------------------------------------------------------------------------------#
# For Session 4

SR_N <- rbind(SR_N, S4_PACC_N[,
                              .(sr = sd(ACC_mean_diff_each)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S4_PACC_PPC[,
                                    .(sr = sd(ACC_mean_diff_each)/sqrt(11)),
])

# P value
S4_PACC_N_P <- cbind(Sham ,S4_PACC_N)
S4_PACC_PPC_P <- cbind(PPC ,S4_PACC_PPC)
P4 <- rbind(S4_PACC_N_P, S4_PACC_PPC_P)
res4 <- t.test(ACC_mean_diff_each~tDCS, data=P4, 
               paired = TRUE, var.equal = FALSE, alternative = "less")

S4_PACC_N_diff <- S4_PACC_N[,lapply(.SD, mean),]
S4_PACC_PPC_diff <- S4_PACC_PPC[,lapply(.SD, mean),]
S4_PACC_N_diff <- setnames(S4_PACC_N_diff, "ACC_mean_diff_each", "ACC_mean_diff")
S4_PACC_PPC_diff <- setnames(S4_PACC_PPC_diff, "ACC_mean_diff_each", "ACC_mean_diff")

session_bind_PACC_N <- rbind(session_bind_PACC_N, S4_PACC_N_diff)
session_bind_PACC_PPC <- rbind(session_bind_PACC_PPC, S4_PACC_PPC_diff)

#------------------------------------------------------------------------------#
# For Session 5

SR_N <- rbind(SR_N, S5_PACC_N[,
                              .(sr = sd(ACC_mean_diff_each)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S5_PACC_PPC[,
                                    .(sr = sd(ACC_mean_diff_each)/sqrt(11)),
])

# P value
S5_PACC_N_P <- cbind(Sham ,S5_PACC_N)
S5_PACC_PPC_P <- cbind(PPC ,S5_PACC_PPC)
P5 <- rbind(S5_PACC_N_P, S5_PACC_PPC_P)
res5 <- t.test(ACC_mean_diff_each~tDCS, data=P5,
               paired = TRUE, var.equal = FALSE, alternative = "less")

S5_PACC_N_diff <- S5_PACC_N[,lapply(.SD, mean),]
S5_PACC_PPC_diff <- S5_PACC_PPC[,lapply(.SD, mean),]
S5_PACC_N_diff <- setnames(S5_PACC_N_diff, "ACC_mean_diff_each", "ACC_mean_diff")
S5_PACC_PPC_diff <- setnames(S5_PACC_PPC_diff, "ACC_mean_diff_each", "ACC_mean_diff")

session_bind_PACC_N <- rbind(session_bind_PACC_N, S5_PACC_N_diff)
session_bind_PACC_PPC <- rbind(session_bind_PACC_PPC, S5_PACC_PPC_diff)

#------------------------------------------------------------------------------#
# For Session 6

SR_N <- rbind(SR_N, S6_PACC_N[,
                              .(sr = sd(ACC_mean_diff_each)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S6_PACC_PPC[,
                                    .(sr = sd(ACC_mean_diff_each)/sqrt(11)),
])

# P value
S6_PACC_N_P <- cbind(Sham ,S6_PACC_N)
S6_PACC_PPC_P <- cbind(PPC ,S6_PACC_PPC)
P6 <- rbind(S6_PACC_N_P, S6_PACC_PPC_P)
res6 <- t.test(ACC_mean_diff_each~tDCS, data=P6,
               paired = TRUE, var.equal = FALSE, alternative = "less")

S6_PACC_N_diff <- S6_PACC_N[,lapply(.SD, mean),]
S6_PACC_PPC_diff <- S6_PACC_PPC[,lapply(.SD, mean),]
S6_PACC_N_diff <- setnames(S6_PACC_N_diff, "ACC_mean_diff_each", "ACC_mean_diff")
S6_PACC_PPC_diff <- setnames(S6_PACC_PPC_diff, "ACC_mean_diff_each", "ACC_mean_diff")

session_bind_PACC_N <- rbind(session_bind_PACC_N, S6_PACC_N_diff)
session_bind_PACC_PPC <- rbind(session_bind_PACC_PPC, S6_PACC_PPC_diff)



# Before binding, divide ACC_mean_diff value as a baseline(Block 1) value

# SHAM
session_bind_PACC_N <- cbind(block, Sham, session_bind_PACC_N, SR_N)
session_bind_PACC_N_value <- session_bind_PACC_N[,3]
session_bind_PACC_N_value <- session_bind_PACC_N_value[,
ACC_mean_diff := mapply(ACC_mean_diff, session_bind_PACC_N_value[1,1], FUN = function(x, y) (x*100)/y)]
session_bind_PACC_N <- session_bind_PACC_N[,!("ACC_mean_diff"),]
session_bind_PACC_N <- cbind(session_bind_PACC_N, session_bind_PACC_N_value)

# PPC
session_bind_PACC_PPC <- cbind(block, PPC, session_bind_PACC_PPC, SR_PPC)
session_bind_PACC_PPC_value <- session_bind_PACC_PPC[,3]
session_bind_PACC_PPC_value <- session_bind_PACC_PPC_value[,
ACC_mean_diff := mapply(ACC_mean_diff, session_bind_PACC_PPC_value[1,1], FUN = function(x, y) (x*100)/y)]
session_bind_PACC_PPC <- session_bind_PACC_PPC[,!("ACC_mean_diff"),]
session_bind_PACC_PPC <- cbind(session_bind_PACC_PPC, session_bind_PACC_PPC_value)


# Bind the total value
session_bind_all <- rbind(session_bind_PACC_N, session_bind_PACC_PPC)
#------------------------------------------------------------------------------#
# ACC tendency between sessions (in graphs)

g1 <- ggplot(data = session_bind_all,
             aes(x = Blocks, y = ACC_mean_diff, group = tDCS, color = tDCS)) + geom_line(size=1)
g1 <- g1 + geom_errorbar(aes(ymin = ACC_mean_diff-sr, ymax = ACC_mean_diff+sr), width = 0.2) + geom_point(size = 3)
g1 <- g1 + ggtitle("Accuracy difference in phasic alertness task") + theme(plot.title = element_text(hjust=0.5))
#g1 <- g1 + annotate(geom="text", x=1.2, y=0.04, label="**", size = 10, colour = "red") + annotate(geom="text", x=1.2, y=0.01, label="**", size = 10, colour = "red")
#g1 <- g1 + scale_y_continuous(lables = scales::percent)
plot(g1)

# P value based on student paired t-test

print(res1$p.value)
print(res2$p.value)
print(res3$p.value)
print(res4$p.value)
print(res5$p.value)
print(res6$p.value)

