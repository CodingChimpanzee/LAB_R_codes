# See phasic alertness RT in session period

#import library
library(data.table)
library(ggplot2)
library(BSDA)
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

#Total PA value in Session
PAS <- NULL

#PPC tDCS PA RT value in Session
PAS_PPC <- NULL

#Sham tDCS PA RT value in Session
PAS_N <- NULL


#------------------------------------------------------------------------------#
# For Session 1
S1_PART_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_1_N")
for(file in S1_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S1_PART_N <- rbind(S1_PART_N, temp)
}
PAS <- rbind(PAS, S1_PART_N)
PAS_N <- rbind(PAS_N, S1_PART_N)


S1_PART_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_1_PPC")
for(file in S1_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S1_PART_PPC <- rbind(S1_PART_PPC, temp)
}
PAS <- rbind(PAS, S1_PART_PPC)
PAS_PPC <- rbind(PAS_PPC, S1_PART_PPC)
#------------------------------------------------------------------------------#
# For Session 2
S2_PART_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_2_N")
for(file in S2_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S2_PART_N <- rbind(S2_PART_N, temp)
}
PAS <- rbind(PAS, S2_PART_N)
PAS_N <- rbind(PAS_N, S2_PART_N)


S2_PART_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_2_PPC")
for(file in S2_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S2_PART_PPC <- rbind(S2_PART_PPC, temp)
}
PAS <- rbind(PAS, S2_PART_PPC)
PAS_PPC <- rbind(PAS_PPC, S2_PART_PPC)
#------------------------------------------------------------------------------#
# For Session 3
S3_PART_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_3_N")
for(file in S3_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S3_PART_N <- rbind(S3_PART_N, temp)
}
PAS <- rbind(PAS, S3_PART_N)
PAS_N <- rbind(PAS_N, S3_PART_N)


S3_PART_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_3_PPC")
for(file in S3_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S3_PART_PPC <- rbind(S3_PART_PPC, temp)
}
PAS <- rbind(PAS, S3_PART_PPC)
PAS_PPC <- rbind(PAS_PPC, S3_PART_PPC)
#------------------------------------------------------------------------------#
# For Session 4
S4_PART_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_4_N")
for(file in S4_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S4_PART_N <- rbind(S4_PART_N, temp)
}
PAS <- rbind(PAS, S4_PART_N)
PAS_N <- rbind(PAS_N, S4_PART_N)


S4_PART_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_4_PPC")
for(file in S4_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S4_PART_PPC <- rbind(S4_PART_PPC, temp)
}
PAS <- rbind(PAS, S4_PART_PPC)
PAS_PPC <- rbind(PAS_PPC, S4_PART_PPC)
#------------------------------------------------------------------------------#
# For Session 5
S5_PART_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_5_N")
for(file in S5_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S5_PART_N <- rbind(S5_PART_N, temp)
}
PAS <- rbind(PAS, S5_PART_N)
PAS_N <- rbind(PAS_N, S5_PART_N)


S5_PART_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_5_PPC")
for(file in S5_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S5_PART_PPC <- rbind(S5_PART_PPC, temp)
}
PAS <- rbind(PAS, S5_PART_PPC)
PAS_PPC <- rbind(PAS_PPC, S5_PART_PPC)
#------------------------------------------------------------------------------#
# For Session 6
S6_PART_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_6_N")
for(file in S6_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S6_PART_N <- rbind(S6_PART_N, temp)
}
PAS <- rbind(PAS, S6_PART_N)
PAS_N <- rbind(PAS_N, S6_PART_N)


S6_PART_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_6_PPC")
for(file in S6_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S6_PART_PPC <- rbind(S6_PART_PPC, temp)
}
PAS <- rbind(PAS, S6_PART_PPC)
PAS_PPC <- rbind(PAS_PPC, S6_PART_PPC)
#------------------------------------------------------------------------------#
# Get the total mean
PAS <- PAS[, 
           .(mean_by_warn_sound = mean(mean_by_warn_sound)),
           by = Warnsound]
PAS_PPC <- PAS_PPC[, 
                   .(mean_by_warn_sound = mean(mean_by_warn_sound)),
                   by = Warnsound]
PAS_N <- PAS_N[, 
               .(mean_by_warn_sound = mean(mean_by_warn_sound)),
               by = Warnsound]
#------------------------------------------------------------------------------#
# Get the RT in session period
session_bind_PART_N <- NULL
session_bind_PART_PPC <- NULL
SR_N <- NULL
SR_PPC <- NULL

#------------------------------------------------------------------------------#
# For Session 1

S1_PART_N_mute <- S1_PART_N[Warnsound == "mute.wav"]
S1_PART_N_warn <- S1_PART_N[Warnsound == "warn.wav"]
S1_PART_PPC_mute <- S1_PART_PPC[Warnsound == "mute.wav"]
S1_PART_PPC_warn <- S1_PART_PPC[Warnsound == "warn.wav"]

S1_PART_N_diff <- cbind(S1_PART_N_mute, S1_PART_N_warn)
colnames(S1_PART_N_diff)[2]<-"mute_mean"
S1_PART_N_diff <- S1_PART_N_diff[,RT_diff:=abs(mute_mean-mean_by_warn_sound)]
S1_PART_N_diff <- S1_PART_N_diff[,!"Warnsound"]
S1_PART_N_diff <- S1_PART_N_diff[,!"mean_by_warn_sound"]
S1_PART_N_diff <- S1_PART_N_diff[,!"mute_mean"]

S1_PART_PPC_diff <- cbind(S1_PART_PPC_mute, S1_PART_PPC_warn)
colnames(S1_PART_PPC_diff)[2]<-"mute_mean"
S1_PART_PPC_diff <- S1_PART_PPC_diff[,RT_diff:=abs(mute_mean-mean_by_warn_sound)]
S1_PART_PPC_diff <- S1_PART_PPC_diff[,!"Warnsound"]
S1_PART_PPC_diff <- S1_PART_PPC_diff[,!"mean_by_warn_sound"]
S1_PART_PPC_diff <- S1_PART_PPC_diff[,!"mute_mean"]

SR_N <- rbind(SR_N, S1_PART_N_diff[,
                                   .(sr = sd(RT_diff)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S1_PART_PPC_diff[,
                                         .(sr = sd(RT_diff)/sqrt(11)),
])

# P value
S1_PART_N_diff_P <- cbind(Sham ,S1_PART_N_diff)
S1_PART_PPC_diff_P <- cbind(PPC ,S1_PART_PPC_diff)
P1 <- rbind(S1_PART_N_diff_P, S1_PART_PPC_diff_P)
res1 <- t.test(RT_diff~tDCS, data=P1, paired = TRUE, var.equal = FALSE, alternative = "less")

S1_PART_N_diff <- S1_PART_N_diff[,lapply(.SD, mean),]
S1_PART_PPC_diff <- S1_PART_PPC_diff[,lapply(.SD, mean),]

session_bind_PART_N <- rbind(session_bind_PART_N, S1_PART_N_diff)
session_bind_PART_PPC <- rbind(session_bind_PART_PPC, S1_PART_PPC_diff)

#------------------------------------------------------------------------------#
# For Session 2

S2_PART_N_mute <- S2_PART_N[Warnsound == "mute.wav"]
S2_PART_N_warn <- S2_PART_N[Warnsound == "warn.wav"]
S2_PART_PPC_mute <- S2_PART_PPC[Warnsound == "mute.wav"]
S2_PART_PPC_warn <- S2_PART_PPC[Warnsound == "warn.wav"]

S2_PART_N_diff <- cbind(S2_PART_N_mute, S2_PART_N_warn)
colnames(S2_PART_N_diff)[2]<-"mute_mean"
S2_PART_N_diff <- S2_PART_N_diff[,RT_diff:=abs(mute_mean-mean_by_warn_sound)]
S2_PART_N_diff <- S2_PART_N_diff[,!"Warnsound"]
S2_PART_N_diff <- S2_PART_N_diff[,!"mean_by_warn_sound"]
S2_PART_N_diff <- S2_PART_N_diff[,!"mute_mean"]

S2_PART_PPC_diff <- cbind(S2_PART_PPC_mute, S2_PART_PPC_warn)
colnames(S2_PART_PPC_diff)[2]<-"mute_mean"
S2_PART_PPC_diff <- S2_PART_PPC_diff[,RT_diff:=abs(mute_mean-mean_by_warn_sound)]
S2_PART_PPC_diff <- S2_PART_PPC_diff[,!"Warnsound"]
S2_PART_PPC_diff <- S2_PART_PPC_diff[,!"mean_by_warn_sound"]
S2_PART_PPC_diff <- S2_PART_PPC_diff[,!"mute_mean"]

SR_N <- rbind(SR_N, S2_PART_N_diff[,
                                   .(sr = sd(RT_diff)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S2_PART_PPC_diff[,
                                         .(sr = sd(RT_diff)/sqrt(11)),
])

# P value
S2_PART_N_diff_P <- cbind(Sham ,S2_PART_N_diff)
S2_PART_PPC_diff_P <- cbind(PPC ,S2_PART_PPC_diff)
P2 <- rbind(S2_PART_N_diff_P, S2_PART_PPC_diff_P)
res2 <- t.test(RT_diff~tDCS, data=P2, paired = TRUE, var.equal = FALSE, alternative = "less")

S2_PART_N_diff <- S2_PART_N_diff[,lapply(.SD, mean),]
S2_PART_PPC_diff <- S2_PART_PPC_diff[,lapply(.SD, mean),]

session_bind_PART_N <- rbind(session_bind_PART_N, S2_PART_N_diff)
session_bind_PART_PPC <- rbind(session_bind_PART_PPC, S2_PART_PPC_diff)

#------------------------------------------------------------------------------#
# For Session 3

S3_PART_N_mute <- S3_PART_N[Warnsound == "mute.wav"]
S3_PART_N_warn <- S3_PART_N[Warnsound == "warn.wav"]
S3_PART_PPC_mute <- S3_PART_PPC[Warnsound == "mute.wav"]
S3_PART_PPC_warn <- S3_PART_PPC[Warnsound == "warn.wav"]

S3_PART_N_diff <- cbind(S3_PART_N_mute, S3_PART_N_warn)
colnames(S3_PART_N_diff)[2]<-"mute_mean"
S3_PART_N_diff <- S3_PART_N_diff[,RT_diff:=abs(mute_mean-mean_by_warn_sound)]
S3_PART_N_diff <- S3_PART_N_diff[,!"Warnsound"]
S3_PART_N_diff <- S3_PART_N_diff[,!"mean_by_warn_sound"]
S3_PART_N_diff <- S3_PART_N_diff[,!"mute_mean"]

S3_PART_PPC_diff <- cbind(S3_PART_PPC_mute, S3_PART_PPC_warn)
colnames(S3_PART_PPC_diff)[2]<-"mute_mean"
S3_PART_PPC_diff <- S3_PART_PPC_diff[,RT_diff:=abs(mute_mean-mean_by_warn_sound)]
S3_PART_PPC_diff <- S3_PART_PPC_diff[,!"Warnsound"]
S3_PART_PPC_diff <- S3_PART_PPC_diff[,!"mean_by_warn_sound"]
S3_PART_PPC_diff <- S3_PART_PPC_diff[,!"mute_mean"]

SR_N <- rbind(SR_N, S3_PART_N_diff[,
                                   .(sr = sd(RT_diff)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S3_PART_PPC_diff[,
                                         .(sr = sd(RT_diff)/sqrt(11)),
])

# P value
S3_PART_N_diff_P <- cbind(Sham ,S3_PART_N_diff)
S3_PART_PPC_diff_P <- cbind(PPC ,S3_PART_PPC_diff)
P3 <- rbind(S3_PART_N_diff_P, S3_PART_PPC_diff_P)
res3 <- t.test(RT_diff~tDCS, data=P3, paired = TRUE, var.equal = FALSE, alternative = "less")

S3_PART_N_diff <- S3_PART_N_diff[,lapply(.SD, mean),]
S3_PART_PPC_diff <- S3_PART_PPC_diff[,lapply(.SD, mean),]

session_bind_PART_N <- rbind(session_bind_PART_N, S3_PART_N_diff)
session_bind_PART_PPC <- rbind(session_bind_PART_PPC, S3_PART_PPC_diff)

#------------------------------------------------------------------------------#
# For Session 4

S4_PART_N_mute <- S4_PART_N[Warnsound == "mute.wav"]
S4_PART_N_warn <- S4_PART_N[Warnsound == "warn.wav"]
S4_PART_PPC_mute <- S4_PART_PPC[Warnsound == "mute.wav"]
S4_PART_PPC_warn <- S4_PART_PPC[Warnsound == "warn.wav"]

S4_PART_N_diff <- cbind(S4_PART_N_mute, S4_PART_N_warn)
colnames(S4_PART_N_diff)[2]<-"mute_mean"
S4_PART_N_diff <- S4_PART_N_diff[,RT_diff:=abs(mute_mean-mean_by_warn_sound)]
S4_PART_N_diff <- S4_PART_N_diff[,!"Warnsound"]
S4_PART_N_diff <- S4_PART_N_diff[,!"mean_by_warn_sound"]
S4_PART_N_diff <- S4_PART_N_diff[,!"mute_mean"]

S4_PART_PPC_diff <- cbind(S4_PART_PPC_mute, S4_PART_PPC_warn)
colnames(S4_PART_PPC_diff)[2]<-"mute_mean"
S4_PART_PPC_diff <- S4_PART_PPC_diff[,RT_diff:=abs(mute_mean-mean_by_warn_sound)]
S4_PART_PPC_diff <- S4_PART_PPC_diff[,!"Warnsound"]
S4_PART_PPC_diff <- S4_PART_PPC_diff[,!"mean_by_warn_sound"]
S4_PART_PPC_diff <- S4_PART_PPC_diff[,!"mute_mean"]

SR_N <- rbind(SR_N, S4_PART_N_diff[,
                                   .(sr = sd(RT_diff)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S4_PART_PPC_diff[,
                                         .(sr = sd(RT_diff)/sqrt(11)),
])

# P value
S4_PART_N_diff_P <- cbind(Sham ,S4_PART_N_diff)
S4_PART_PPC_diff_P <- cbind(PPC ,S4_PART_PPC_diff)
P4 <- rbind(S4_PART_N_diff_P, S4_PART_PPC_diff_P)
res4 <- t.test(RT_diff~tDCS, data=P4, paired = TRUE, var.equal = FALSE, alternative = "less")

S4_PART_N_diff <- S4_PART_N_diff[,lapply(.SD, mean),]
S4_PART_PPC_diff <- S4_PART_PPC_diff[,lapply(.SD, mean),]

session_bind_PART_N <- rbind(session_bind_PART_N, S4_PART_N_diff)
session_bind_PART_PPC <- rbind(session_bind_PART_PPC, S4_PART_PPC_diff)

#------------------------------------------------------------------------------#
# For Session 5

S5_PART_N_mute <- S5_PART_N[Warnsound == "mute.wav"]
S5_PART_N_warn <- S5_PART_N[Warnsound == "warn.wav"]
S5_PART_PPC_mute <- S5_PART_PPC[Warnsound == "mute.wav"]
S5_PART_PPC_warn <- S5_PART_PPC[Warnsound == "warn.wav"]

S5_PART_N_diff <- cbind(S5_PART_N_mute, S5_PART_N_warn)
colnames(S5_PART_N_diff)[2]<-"mute_mean"
S5_PART_N_diff <- S5_PART_N_diff[,RT_diff:=abs(mute_mean-mean_by_warn_sound)]
S5_PART_N_diff <- S5_PART_N_diff[,!"Warnsound"]
S5_PART_N_diff <- S5_PART_N_diff[,!"mean_by_warn_sound"]
S5_PART_N_diff <- S5_PART_N_diff[,!"mute_mean"]

S5_PART_PPC_diff <- cbind(S5_PART_PPC_mute, S5_PART_PPC_warn)
colnames(S5_PART_PPC_diff)[2]<-"mute_mean"
S5_PART_PPC_diff <- S5_PART_PPC_diff[,RT_diff:=abs(mute_mean-mean_by_warn_sound)]
S5_PART_PPC_diff <- S5_PART_PPC_diff[,!"Warnsound"]
S5_PART_PPC_diff <- S5_PART_PPC_diff[,!"mean_by_warn_sound"]
S5_PART_PPC_diff <- S5_PART_PPC_diff[,!"mute_mean"]

SR_N <- rbind(SR_N, S5_PART_N_diff[,
                                   .(sr = sd(RT_diff)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S5_PART_PPC_diff[,
                                         .(sr = sd(RT_diff)/sqrt(11)),
])

# P value
S5_PART_N_diff_P <- cbind(Sham ,S5_PART_N_diff)
S5_PART_PPC_diff_P <- cbind(PPC ,S5_PART_PPC_diff)
P5 <- rbind(S5_PART_N_diff_P, S5_PART_PPC_diff_P)
res5 <- t.test(RT_diff~tDCS, data=P5, paired = TRUE, var.equal = FALSE, alternative = "less")

S5_PART_N_diff <- S5_PART_N_diff[,lapply(.SD, mean),]
S5_PART_PPC_diff <- S5_PART_PPC_diff[,lapply(.SD, mean),]

session_bind_PART_N <- rbind(session_bind_PART_N, S5_PART_N_diff)
session_bind_PART_PPC <- rbind(session_bind_PART_PPC, S5_PART_PPC_diff)

#------------------------------------------------------------------------------#
# For Session 6

S6_PART_N_mute <- S6_PART_N[Warnsound == "mute.wav"]
S6_PART_N_warn <- S6_PART_N[Warnsound == "warn.wav"]
S6_PART_PPC_mute <- S6_PART_PPC[Warnsound == "mute.wav"]
S6_PART_PPC_warn <- S6_PART_PPC[Warnsound == "warn.wav"]

S6_PART_N_diff <- cbind(S6_PART_N_mute, S6_PART_N_warn)
colnames(S6_PART_N_diff)[2]<-"mute_mean"
S6_PART_N_diff <- S6_PART_N_diff[,RT_diff:=abs(mute_mean-mean_by_warn_sound)]
S6_PART_N_diff <- S6_PART_N_diff[,!"Warnsound"]
S6_PART_N_diff <- S6_PART_N_diff[,!"mean_by_warn_sound"]
S6_PART_N_diff <- S6_PART_N_diff[,!"mute_mean"]

S6_PART_PPC_diff <- cbind(S6_PART_PPC_mute, S6_PART_PPC_warn)
colnames(S6_PART_PPC_diff)[2]<-"mute_mean"
S6_PART_PPC_diff <- S6_PART_PPC_diff[,RT_diff:=abs(mute_mean-mean_by_warn_sound)]
S6_PART_PPC_diff <- S6_PART_PPC_diff[,!"Warnsound"]
S6_PART_PPC_diff <- S6_PART_PPC_diff[,!"mean_by_warn_sound"]
S6_PART_PPC_diff <- S6_PART_PPC_diff[,!"mute_mean"]

SR_N <- rbind(SR_N, S6_PART_N_diff[,
                                   .(sr = sd(RT_diff)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S6_PART_PPC_diff[,
                                         .(sr = sd(RT_diff)/sqrt(11)),
])

# P value
S6_PART_N_diff_P <- cbind(Sham ,S6_PART_N_diff)
S6_PART_PPC_diff_P <- cbind(PPC ,S6_PART_PPC_diff)
P6 <- rbind(S6_PART_N_diff_P, S6_PART_PPC_diff_P)
res6 <- t.test(RT_diff~tDCS, data=P6, paired = TRUE, var.equal = FALSE, alternative = "less")

S6_PART_N_diff <- S6_PART_N_diff[,lapply(.SD, mean),]
S6_PART_PPC_diff <- S6_PART_PPC_diff[,lapply(.SD, mean),]

session_bind_PART_N <- rbind(session_bind_PART_N, S6_PART_N_diff)
session_bind_PART_PPC <- rbind(session_bind_PART_PPC, S6_PART_PPC_diff)


session_bind_PART_N_g <- cbind(block, Sham, session_bind_PART_N, SR_N)

session_bind_PART_PPC_g <- cbind(block, PPC, session_bind_PART_PPC, SR_PPC)

session_bind_all <- rbind(session_bind_PART_N_g, session_bind_PART_PPC_g)
#------------------------------------------------------------------------------#
# Now for the plots


# RT tendency between sessions (in sham, PPC tDCS) (in graphs)
g1 <- ggplot(data = session_bind_all,
             aes(x = Blocks, y = RT_diff, group = tDCS, color = tDCS)) + geom_line(size=1)
g1 <- g1 + geom_errorbar(aes(ymin = RT_diff-sr, ymax = RT_diff+sr), width = 0.2) + geom_point(size = 3)
g1 <- g1 + ggtitle("Response Time difference(mute, warn) in PA task") + theme(plot.title = element_text(hjust=0.5))
g1 <- g1 + annotate(geom="text", x=4.1, y=68, label="*", size = 10) + annotate(geom="text", x=4.1, y=38, label="*", size = 10)
plot(g1)

# P value in the respect of paired student t test

print(res1$p.value)
print(res2$p.value)
print(res3$p.value)
print(res4$p.value)
print(res5$p.value)
print(res6$p.value)
