# See phasic alertness RT in session period

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
SR_N_mute <- NULL
SR_N_warn <- NULL
SR_PPC_mute <- NULL
SR_PPC_warn <- NULL


#------------------------------------------------------------------------------#
# For Session 1
SR_N_mute <- rbind(SR_N_mute, S1_PART_N[Warnsound == "mute.wav",
                              .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
SR_N_warn <- rbind(SR_N_warn, S1_PART_N[Warnsound == "warn.wav",
                                   .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
SR_PPC_mute <- rbind(SR_PPC_mute, S1_PART_PPC[Warnsound == "mute.wav",
                                    .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
SR_PPC_warn <- rbind(SR_PPC_warn, S1_PART_PPC[Warnsound == "warn.wav",
                                         .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
S1_PART_N <- S1_PART_N[, 
           .(mean_RT = mean(mean_by_warn_sound)),
           by = Warnsound]
S1_PART_PPC <- S1_PART_PPC[, 
                       .(mean_RT = mean(mean_by_warn_sound)),
                       by = Warnsound]
session_bind_PART_N <- rbind(session_bind_PART_N, S1_PART_N)
session_bind_PART_PPC <- rbind(session_bind_PART_PPC, S1_PART_PPC)

#------------------------------------------------------------------------------#
# For Session 2
SR_N_mute <- rbind(SR_N_mute, S2_PART_N[Warnsound == "mute.wav",
                                   .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
SR_N_warn <- rbind(SR_N_warn, S2_PART_N[Warnsound == "warn.wav",
                                   .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
SR_PPC_mute <- rbind(SR_PPC_mute, S2_PART_PPC[Warnsound == "mute.wav",
                                         .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
SR_PPC_warn <- rbind(SR_PPC_warn, S2_PART_PPC[Warnsound == "warn.wav",
                                         .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
S2_PART_N <- S2_PART_N[, 
                       .(mean_RT = mean(mean_by_warn_sound)),
                       by = Warnsound]
S2_PART_PPC <- S2_PART_PPC[, 
                           .(mean_RT = mean(mean_by_warn_sound)),
                           by = Warnsound]
session_bind_PART_N <- rbind(session_bind_PART_N, S2_PART_N)
session_bind_PART_PPC <- rbind(session_bind_PART_PPC, S2_PART_PPC)

#------------------------------------------------------------------------------#
# For Session 3
SR_N_mute <- rbind(SR_N_mute, S3_PART_N[Warnsound == "mute.wav",
                                   .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
SR_N_warn <- rbind(SR_N_warn, S3_PART_N[Warnsound == "warn.wav",
                                   .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
SR_PPC_mute <- rbind(SR_PPC_mute, S3_PART_PPC[Warnsound == "mute.wav",
                                         .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
SR_PPC_warn <- rbind(SR_PPC_warn, S3_PART_PPC[Warnsound == "warn.wav",
                                         .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
S3_PART_N <- S3_PART_N[, 
                       .(mean_RT = mean(mean_by_warn_sound)),
                       by = Warnsound]
S3_PART_PPC <- S3_PART_PPC[, 
                           .(mean_RT = mean(mean_by_warn_sound)),
                           by = Warnsound]
session_bind_PART_N <- rbind(session_bind_PART_N, S3_PART_N)
session_bind_PART_PPC <- rbind(session_bind_PART_PPC, S3_PART_PPC)

#------------------------------------------------------------------------------#
# For Session 4
SR_N_mute <- rbind(SR_N_mute, S4_PART_N[Warnsound == "mute.wav",
                                   .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
SR_N_warn <- rbind(SR_N_warn, S4_PART_N[Warnsound == "warn.wav",
                                   .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
SR_PPC_mute <- rbind(SR_PPC_mute, S4_PART_PPC[Warnsound == "mute.wav",
                                         .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
SR_PPC_warn <- rbind(SR_PPC_warn, S4_PART_PPC[Warnsound == "warn.wav",
                                         .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
S4_PART_N <- S4_PART_N[, 
                       .(mean_RT = mean(mean_by_warn_sound)),
                       by = Warnsound]
S4_PART_PPC <- S4_PART_PPC[, 
                           .(mean_RT = mean(mean_by_warn_sound)),
                           by = Warnsound]
session_bind_PART_N <- rbind(session_bind_PART_N, S4_PART_N)
session_bind_PART_PPC <- rbind(session_bind_PART_PPC, S4_PART_PPC)

#------------------------------------------------------------------------------#
# For Session 5
SR_N_mute <- rbind(SR_N_mute, S5_PART_N[Warnsound == "mute.wav",
                                   .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
SR_N_warn <- rbind(SR_N_warn, S5_PART_N[Warnsound == "warn.wav",
                                   .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
SR_PPC_mute <- rbind(SR_PPC_mute, S5_PART_PPC[Warnsound == "mute.wav",
                                         .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
SR_PPC_warn <- rbind(SR_PPC_warn, S5_PART_PPC[Warnsound == "warn.wav",
                                         .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
S5_PART_N <- S5_PART_N[, 
                       .(mean_RT = mean(mean_by_warn_sound)),
                       by = Warnsound]
S5_PART_PPC <- S5_PART_PPC[, 
                           .(mean_RT = mean(mean_by_warn_sound)),
                           by = Warnsound]
session_bind_PART_N <- rbind(session_bind_PART_N, S5_PART_N)
session_bind_PART_PPC <- rbind(session_bind_PART_PPC, S5_PART_PPC)

#------------------------------------------------------------------------------#
# For Session 6
SR_N_mute <- rbind(SR_N_mute, S6_PART_N[Warnsound == "mute.wav",
                                   .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
SR_N_warn <- rbind(SR_N_warn, S6_PART_N[Warnsound == "warn.wav",
                                   .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
SR_PPC_mute <- rbind(SR_PPC_mute, S6_PART_PPC[Warnsound == "mute.wav",
                                         .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
SR_PPC_warn <- rbind(SR_PPC_warn, S6_PART_PPC[Warnsound == "warn.wav",
                                         .(sr = sd(mean_by_warn_sound)/sqrt(11)),
])
S6_PART_N <- S6_PART_N[, 
                       .(mean_RT = mean(mean_by_warn_sound)),
                       by = Warnsound]
S6_PART_PPC <- S6_PART_PPC[, 
                           .(mean_RT = mean(mean_by_warn_sound)),
                           by = Warnsound]
session_bind_PART_N <- rbind(session_bind_PART_N, S6_PART_N)
session_bind_PART_PPC <- rbind(session_bind_PART_PPC, S6_PART_PPC)



session_bind_PART_N <- cbind(Sham, session_bind_PART_N)
session_bind_PART_PPC <- cbind(PPC, session_bind_PART_PPC)

session_bind_PART_N_mute <- cbind(session_bind_PART_N[Warnsound=="mute.wav"], SR_N_mute)
session_bind_PART_N_warn <- cbind(session_bind_PART_N[Warnsound=="warn.wav"], SR_N_warn)
session_bind_PART_PPC_mute <- cbind(session_bind_PART_PPC[Warnsound=="mute.wav"], SR_PPC_mute)
session_bind_PART_PPC_warn <- cbind(session_bind_PART_PPC[Warnsound=="warn.wav"], SR_PPC_warn)

session_bind_mute <- rbind(session_bind_PART_N_mute,session_bind_PART_PPC_mute)
session_bind_mute <- cbind(block, session_bind_mute)
session_bind_mute <- session_bind_mute[,!"Warnsound"]
session_bind_warn <- rbind(session_bind_PART_N_warn,session_bind_PART_PPC_warn)
session_bind_warn <- cbind(block, session_bind_warn)
session_bind_warn <- session_bind_warn[,!"Warnsound"]

#------------------------------------------------------------------------------#
# Now for the plots

PARTNa <- aov(Blocks~mean_RT, data=session_bind_mute)
PARTPCCa <- aov(Blocks~mean_RT, data=session_bind_warn)

session_bind_mute <- setnames(session_bind_mute, "mean_RT", "Response_time_mean")
session_bind_mute <- setnames(session_bind_mute, "Blocks", "Sessions")
session_bind_warn <- setnames(session_bind_warn, "mean_RT", "Response_time_mean")
session_bind_warn <- setnames(session_bind_warn, "Blocks", "Sessions")

# RT tendency between sessions (in sham, PPC tDCS) (in graphs)
g1 <- ggplot(data = session_bind_mute,
            aes(x = Sessions, y = Response_time_mean, group = tDCS, color = tDCS)) + geom_line(size=1)
g1 <- g1 + geom_errorbar(aes(ymin = Response_time_mean-sr, ymax = Response_time_mean+sr), width = 0.2) + geom_point(size = 3)
g1 <- g1 + ggtitle("Response time in phasic alertness task(mute)") + theme(plot.title = element_text(hjust=0.5))
#g1 <- g1 + annotate(geom="text", x=6, y=570, label="p=0.0891")
g1 <- g1 + ylim(440, 580)
g1 <- g1 + theme(axis.title = element_text(size=20)) + theme(plot.title = element_text(size=20))
plot(g1)


g2 <- ggplot(data = session_bind_warn,
             aes(x = Sessions, y = Response_time_mean, group = tDCS, color = tDCS)) + geom_line(size=1)
g2 <- g2 + geom_errorbar(aes(ymin = Response_time_mean-sr, ymax = Response_time_mean+sr), width = 0.2) + geom_point(size = 3)
g2 <- g2 + ggtitle("Response time in phasic alertness task(alert)") + theme(plot.title = element_text(hjust=0.5))
#g2 <- g2 + annotate(geom="text", x=6, y=540, label="p=0.122")
g2 <- g2 + ylim(440, 580)
g2 <- g2 + theme(axis.title = element_text(size=20)) + theme(plot.title = element_text(size=20))
plot(g2)

# PA RT Tendency (Fin)
