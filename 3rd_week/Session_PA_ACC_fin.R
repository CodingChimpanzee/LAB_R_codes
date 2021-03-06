# See phasic alertness task accuracy in session period

#import library
library(data.table)
library(ggplot2)
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
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Warnsound]
  S1_PACC_N <- rbind(S1_PACC_N, temp)
}
PAS_ACC_N <- rbind(PAS_ACC_N, S1_PACC_N)

S1_PACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_1_PPC")
for(file in S1_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Warnsound]
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
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Warnsound]
  S2_PACC_N <- rbind(S2_PACC_N, temp)
}
PAS_ACC_N <- rbind(PAS_ACC_N, S2_PACC_N)

S2_PACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_2_PPC")
for(file in S2_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Warnsound]
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
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Warnsound]
  S3_PACC_N <- rbind(S3_PACC_N, temp)
}
PAS_ACC_N <- rbind(PAS_ACC_N, S3_PACC_N)

S3_PACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_3_PPC")
for(file in S3_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Warnsound]
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
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Warnsound]
  S4_PACC_N <- rbind(S4_PACC_N, temp)
}
PAS_ACC_N <- rbind(PAS_ACC_N, S4_PACC_N)

S4_PACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_4_PPC")
for(file in S4_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Warnsound]
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
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Warnsound]
  S5_PACC_N <- rbind(S5_PACC_N, temp)
}
PAS_ACC_N <- rbind(PAS_ACC_N, S5_PACC_N)

S5_PACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_5_PPC")
for(file in S5_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Warnsound]
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
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Warnsound]
  S6_PACC_N <- rbind(S6_PACC_N, temp)
}
PAS_ACC_N <- rbind(PAS_ACC_N, S6_PACC_N)

S6_PACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_6_PPC")
for(file in S6_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Warnsound]
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

S1_PACC_N_mute <- S1_PACC_N[Warnsound == "mute.wav"]
S1_PACC_N_warn <- S1_PACC_N[Warnsound == "warn.wav"]
S1_PACC_PPC_mute <- S1_PACC_PPC[Warnsound == "mute.wav"]
S1_PACC_PPC_warn <- S1_PACC_PPC[Warnsound == "warn.wav"]

S1_PACC_N_diff <- cbind(S1_PACC_N_mute, S1_PACC_N_warn)
colnames(S1_PACC_N_diff)[2]<-"mute_mean"
S1_PACC_N_diff <- S1_PACC_N_diff[,ACC_diff:=abs(mute_mean-accuracy)]
S1_PACC_N_diff <- S1_PACC_N_diff[,!"Warnsound"]
S1_PACC_N_diff <- S1_PACC_N_diff[,!"accuracy"]                                
S1_PACC_N_diff <- S1_PACC_N_diff[,!"mute_mean"] 

S1_PACC_PPC_diff <- cbind(S1_PACC_PPC_mute, S1_PACC_PPC_warn)
colnames(S1_PACC_PPC_diff)[2]<-"mute_mean"
S1_PACC_PPC_diff <- S1_PACC_PPC_diff[,ACC_diff:=abs(mute_mean-accuracy)]
S1_PACC_PPC_diff <- S1_PACC_PPC_diff[,!"Warnsound"]
S1_PACC_PPC_diff <- S1_PACC_PPC_diff[,!"accuracy"]                                
S1_PACC_PPC_diff <- S1_PACC_PPC_diff[,!"mute_mean"] 

SR_N <- rbind(SR_N, S1_PACC_N_diff[,
                                   .(sr = sd(ACC_diff)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S1_PACC_PPC_diff[,
                                         .(sr = sd(ACC_diff)/sqrt(11)),
])

# P value
S1_PACC_N_diff_P <- cbind(Sham ,S1_PACC_N_diff)
S1_PACC_PPC_diff_P <- cbind(PPC ,S1_PACC_PPC_diff)
P1 <- rbind(S1_PACC_N_diff_P, S1_PACC_PPC_diff_P)
res1 <- t.test(ACC_diff~tDCS, data=P1, paired = TRUE, var.equal = FALSE, alternative = "less")

S1_PACC_N_diff <- S1_PACC_N_diff[,lapply(.SD, mean),]
S1_PACC_PPC_diff <- S1_PACC_PPC_diff[,lapply(.SD, mean),]

session_bind_PACC_N <- rbind(session_bind_PACC_N, S1_PACC_N_diff)
session_bind_PACC_PPC <- rbind(session_bind_PACC_PPC, S1_PACC_PPC_diff)

#------------------------------------------------------------------------------#
# For Session 2

S2_PACC_N_mute <- S2_PACC_N[Warnsound == "mute.wav"]
S2_PACC_N_warn <- S2_PACC_N[Warnsound == "warn.wav"]
S2_PACC_PPC_mute <- S2_PACC_PPC[Warnsound == "mute.wav"]
S2_PACC_PPC_warn <- S2_PACC_PPC[Warnsound == "warn.wav"]

S2_PACC_N_diff <- cbind(S2_PACC_N_mute, S2_PACC_N_warn)
colnames(S2_PACC_N_diff)[2]<-"mute_mean"
S2_PACC_N_diff <- S2_PACC_N_diff[,ACC_diff:=abs(mute_mean-accuracy)]
S2_PACC_N_diff <- S2_PACC_N_diff[,!"Warnsound"]
S2_PACC_N_diff <- S2_PACC_N_diff[,!"accuracy"]                                
S2_PACC_N_diff <- S2_PACC_N_diff[,!"mute_mean"] 

S2_PACC_PPC_diff <- cbind(S2_PACC_PPC_mute, S2_PACC_PPC_warn)
colnames(S2_PACC_PPC_diff)[2]<-"mute_mean"
S2_PACC_PPC_diff <- S2_PACC_PPC_diff[,ACC_diff:=abs(mute_mean-accuracy)]
S2_PACC_PPC_diff <- S2_PACC_PPC_diff[,!"Warnsound"]
S2_PACC_PPC_diff <- S2_PACC_PPC_diff[,!"accuracy"]                                
S2_PACC_PPC_diff <- S2_PACC_PPC_diff[,!"mute_mean"] 

SR_N <- rbind(SR_N, S2_PACC_N_diff[,
                                   .(sr = sd(ACC_diff)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S2_PACC_PPC_diff[,
                                         .(sr = sd(ACC_diff)/sqrt(11)),
])

# P value
S2_PACC_N_diff_P <- cbind(Sham ,S2_PACC_N_diff)
S2_PACC_PPC_diff_P <- cbind(PPC ,S2_PACC_PPC_diff)
P2 <- rbind(S2_PACC_N_diff_P, S2_PACC_PPC_diff_P)
res2 <- t.test(ACC_diff~tDCS, data=P2, paired = TRUE, var.equal = FALSE, alternative = "less")

S2_PACC_N_diff <- S2_PACC_N_diff[,lapply(.SD, mean),]
S2_PACC_PPC_diff <- S2_PACC_PPC_diff[,lapply(.SD, mean),]

session_bind_PACC_N <- rbind(session_bind_PACC_N, S2_PACC_N_diff)
session_bind_PACC_PPC <- rbind(session_bind_PACC_PPC, S2_PACC_PPC_diff)

#------------------------------------------------------------------------------#
# For Session 3

S3_PACC_N_mute <- S3_PACC_N[Warnsound == "mute.wav"]
S3_PACC_N_warn <- S3_PACC_N[Warnsound == "warn.wav"]
S3_PACC_PPC_mute <- S3_PACC_PPC[Warnsound == "mute.wav"]
S3_PACC_PPC_warn <- S3_PACC_PPC[Warnsound == "warn.wav"]

S3_PACC_N_diff <- cbind(S3_PACC_N_mute, S3_PACC_N_warn)
colnames(S3_PACC_N_diff)[2]<-"mute_mean"
S3_PACC_N_diff <- S3_PACC_N_diff[,ACC_diff:=abs(mute_mean-accuracy)]
S3_PACC_N_diff <- S3_PACC_N_diff[,!"Warnsound"]
S3_PACC_N_diff <- S3_PACC_N_diff[,!"accuracy"]                                
S3_PACC_N_diff <- S3_PACC_N_diff[,!"mute_mean"] 

S3_PACC_PPC_diff <- cbind(S3_PACC_PPC_mute, S3_PACC_PPC_warn)
colnames(S3_PACC_PPC_diff)[2]<-"mute_mean"
S3_PACC_PPC_diff <- S3_PACC_PPC_diff[,ACC_diff:=abs(mute_mean-accuracy)]
S3_PACC_PPC_diff <- S3_PACC_PPC_diff[,!"Warnsound"]
S3_PACC_PPC_diff <- S3_PACC_PPC_diff[,!"accuracy"]                                
S3_PACC_PPC_diff <- S3_PACC_PPC_diff[,!"mute_mean"] 

SR_N <- rbind(SR_N, S3_PACC_N_diff[,
                                   .(sr = sd(ACC_diff)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S3_PACC_PPC_diff[,
                                         .(sr = sd(ACC_diff)/sqrt(11)),
])

# P value
S3_PACC_N_diff_P <- cbind(Sham ,S3_PACC_N_diff)
S3_PACC_PPC_diff_P <- cbind(PPC ,S3_PACC_PPC_diff)
P3 <- rbind(S3_PACC_N_diff_P, S3_PACC_PPC_diff_P)
res3 <- t.test(ACC_diff~tDCS, data=P3, paired = TRUE, var.equal = FALSE, alternative = "less")

S3_PACC_N_diff <- S3_PACC_N_diff[,lapply(.SD, mean),]
S3_PACC_PPC_diff <- S3_PACC_PPC_diff[,lapply(.SD, mean),]

session_bind_PACC_N <- rbind(session_bind_PACC_N, S3_PACC_N_diff)
session_bind_PACC_PPC <- rbind(session_bind_PACC_PPC, S3_PACC_PPC_diff)

#------------------------------------------------------------------------------#
# For Session 4

S4_PACC_N_mute <- S4_PACC_N[Warnsound == "mute.wav"]
S4_PACC_N_warn <- S4_PACC_N[Warnsound == "warn.wav"]
S4_PACC_PPC_mute <- S4_PACC_PPC[Warnsound == "mute.wav"]
S4_PACC_PPC_warn <- S4_PACC_PPC[Warnsound == "warn.wav"]

S4_PACC_N_diff <- cbind(S4_PACC_N_mute, S4_PACC_N_warn)
colnames(S4_PACC_N_diff)[2]<-"mute_mean"
S4_PACC_N_diff <- S4_PACC_N_diff[,ACC_diff:=abs(mute_mean-accuracy)]
S4_PACC_N_diff <- S4_PACC_N_diff[,!"Warnsound"]
S4_PACC_N_diff <- S4_PACC_N_diff[,!"accuracy"]                                
S4_PACC_N_diff <- S4_PACC_N_diff[,!"mute_mean"] 

S4_PACC_PPC_diff <- cbind(S4_PACC_PPC_mute, S4_PACC_PPC_warn)
colnames(S4_PACC_PPC_diff)[2]<-"mute_mean"
S4_PACC_PPC_diff <- S4_PACC_PPC_diff[,ACC_diff:=abs(mute_mean-accuracy)]
S4_PACC_PPC_diff <- S4_PACC_PPC_diff[,!"Warnsound"]
S4_PACC_PPC_diff <- S4_PACC_PPC_diff[,!"accuracy"]                                
S4_PACC_PPC_diff <- S4_PACC_PPC_diff[,!"mute_mean"] 

SR_N <- rbind(SR_N, S4_PACC_N_diff[,
                                   .(sr = sd(ACC_diff)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S4_PACC_PPC_diff[,
                                         .(sr = sd(ACC_diff)/sqrt(11)),
])

# P value
S4_PACC_N_diff_P <- cbind(Sham ,S4_PACC_N_diff)
S4_PACC_PPC_diff_P <- cbind(PPC ,S4_PACC_PPC_diff)
P4 <- rbind(S4_PACC_N_diff_P, S4_PACC_PPC_diff_P)
res4 <- t.test(ACC_diff~tDCS, data=P4, paired = TRUE, var.equal = FALSE, alternative = "less")

S4_PACC_N_diff <- S4_PACC_N_diff[,lapply(.SD, mean),]
S4_PACC_PPC_diff <- S4_PACC_PPC_diff[,lapply(.SD, mean),]

session_bind_PACC_N <- rbind(session_bind_PACC_N, S4_PACC_N_diff)
session_bind_PACC_PPC <- rbind(session_bind_PACC_PPC, S4_PACC_PPC_diff)

#------------------------------------------------------------------------------#
# For Session 5

S5_PACC_N_mute <- S5_PACC_N[Warnsound == "mute.wav"]
S5_PACC_N_warn <- S5_PACC_N[Warnsound == "warn.wav"]
S5_PACC_PPC_mute <- S5_PACC_PPC[Warnsound == "mute.wav"]
S5_PACC_PPC_warn <- S5_PACC_PPC[Warnsound == "warn.wav"]

S5_PACC_N_diff <- cbind(S5_PACC_N_mute, S5_PACC_N_warn)
colnames(S5_PACC_N_diff)[2]<-"mute_mean"
S5_PACC_N_diff <- S5_PACC_N_diff[,ACC_diff:=abs(mute_mean-accuracy)]
S5_PACC_N_diff <- S5_PACC_N_diff[,!"Warnsound"]
S5_PACC_N_diff <- S5_PACC_N_diff[,!"accuracy"]                                
S5_PACC_N_diff <- S5_PACC_N_diff[,!"mute_mean"] 

S5_PACC_PPC_diff <- cbind(S5_PACC_PPC_mute, S5_PACC_PPC_warn)
colnames(S5_PACC_PPC_diff)[2]<-"mute_mean"
S5_PACC_PPC_diff <- S5_PACC_PPC_diff[,ACC_diff:=abs(mute_mean-accuracy)]
S5_PACC_PPC_diff <- S5_PACC_PPC_diff[,!"Warnsound"]
S5_PACC_PPC_diff <- S5_PACC_PPC_diff[,!"accuracy"]                                
S5_PACC_PPC_diff <- S5_PACC_PPC_diff[,!"mute_mean"] 

SR_N <- rbind(SR_N, S5_PACC_N_diff[,
                                   .(sr = sd(ACC_diff)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S5_PACC_PPC_diff[,
                                         .(sr = sd(ACC_diff)/sqrt(11)),
])

# P value
S5_PACC_N_diff_P <- cbind(Sham ,S5_PACC_N_diff)
S5_PACC_PPC_diff_P <- cbind(PPC ,S5_PACC_PPC_diff)
P5 <- rbind(S5_PACC_N_diff_P, S5_PACC_PPC_diff_P)
res5 <- t.test(ACC_diff~tDCS, data=P5, paired = TRUE, var.equal = FALSE, alternative = "less")

S5_PACC_N_diff <- S5_PACC_N_diff[,lapply(.SD, mean),]
S5_PACC_PPC_diff <- S5_PACC_PPC_diff[,lapply(.SD, mean),]

session_bind_PACC_N <- rbind(session_bind_PACC_N, S5_PACC_N_diff)
session_bind_PACC_PPC <- rbind(session_bind_PACC_PPC, S5_PACC_PPC_diff)

#------------------------------------------------------------------------------#
# For Session 6

S6_PACC_N_mute <- S6_PACC_N[Warnsound == "mute.wav"]
S6_PACC_N_warn <- S6_PACC_N[Warnsound == "warn.wav"]
S6_PACC_PPC_mute <- S6_PACC_PPC[Warnsound == "mute.wav"]
S6_PACC_PPC_warn <- S6_PACC_PPC[Warnsound == "warn.wav"]

S6_PACC_N_diff <- cbind(S6_PACC_N_mute, S6_PACC_N_warn)
colnames(S6_PACC_N_diff)[2]<-"mute_mean"
S6_PACC_N_diff <- S6_PACC_N_diff[,ACC_diff:=abs(mute_mean-accuracy)]
S6_PACC_N_diff <- S6_PACC_N_diff[,!"Warnsound"]
S6_PACC_N_diff <- S6_PACC_N_diff[,!"accuracy"]                                
S6_PACC_N_diff <- S6_PACC_N_diff[,!"mute_mean"] 

S6_PACC_PPC_diff <- cbind(S6_PACC_PPC_mute, S6_PACC_PPC_warn)
colnames(S6_PACC_PPC_diff)[2]<-"mute_mean"
S6_PACC_PPC_diff <- S6_PACC_PPC_diff[,ACC_diff:=abs(mute_mean-accuracy)]
S6_PACC_PPC_diff <- S6_PACC_PPC_diff[,!"Warnsound"]
S6_PACC_PPC_diff <- S6_PACC_PPC_diff[,!"accuracy"]                                
S6_PACC_PPC_diff <- S6_PACC_PPC_diff[,!"mute_mean"] 

SR_N <- rbind(SR_N, S6_PACC_N_diff[,
                                   .(sr = sd(ACC_diff)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S6_PACC_PPC_diff[,
                                         .(sr = sd(ACC_diff)/sqrt(11)),
])

# P value
S6_PACC_N_diff_P <- cbind(Sham ,S6_PACC_N_diff)
S6_PACC_PPC_diff_P <- cbind(PPC ,S6_PACC_PPC_diff)
P6 <- rbind(S6_PACC_N_diff_P, S6_PACC_PPC_diff_P)
res6 <- t.test(ACC_diff~tDCS, data=P6, paired = TRUE, var.equal = FALSE, alternative = "less")

S6_PACC_N_diff <- S6_PACC_N_diff[,lapply(.SD, mean),]
S6_PACC_PPC_diff <- S6_PACC_PPC_diff[,lapply(.SD, mean),]

session_bind_PACC_N <- rbind(session_bind_PACC_N, S6_PACC_N_diff)
session_bind_PACC_PPC <- rbind(session_bind_PACC_PPC, S6_PACC_PPC_diff)

session_bind_PACC_N <- cbind(block, Sham, session_bind_PACC_N, SR_N)
session_bind_PACC_PPC <- cbind(block, PPC, session_bind_PACC_PPC, SR_PPC)
session_bind_all <- rbind(session_bind_PACC_N, session_bind_PACC_PPC)
#------------------------------------------------------------------------------#
# ACC tendency between sessions (in graphs)


g1 <- ggplot(data = session_bind_all,
             aes(x = Blocks, y = ACC_diff, group = tDCS, color = tDCS)) + geom_line(size=1)
g1 <- g1 + geom_errorbar(aes(ymin = ACC_diff-sr, ymax = ACC_diff+sr), width = 0.2) + geom_point(size = 3)
g1 <- g1 + ggtitle("Accuracy difference in phasic alertness task") + theme(plot.title = element_text(hjust=0.5))
g1 <- g1 + annotate(geom="text", x=1.2, y=0.92, label="**", size = 10, colour = "red") + annotate(geom="text", x=1.2, y=0.25, label="**", size = 10, colour = "red")
plot(g1)

# P value based on student paired t-test

print(res1$p.value)
print(res2$p.value)
print(res3$p.value)
print(res4$p.value)
print(res5$p.value)
print(res6$p.value)

# https://blog.naver.com/nife0719/221000580841