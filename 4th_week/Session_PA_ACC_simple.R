# See phasic alertness task accuracy in session period
# It does not see the accuracy difference between tendencies

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
                 .(accuracy = mean(PracStimulus.ACC)),
                 by = Warnsound]
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
  S6_PACC_PPC <- rbind(S6_PACC_PPC, temp)
}
PAS_ACC_PPC <- rbind(PAS_ACC_PPC, S6_PACC_PPC)
#------------------------------------------------------------------------------#



#------------------------------------------------------------------------------#
# Accuracy tendency by sessions
session_bind_N <- NULL
session_bind_PPC <- NULL
SR_N <- NULL
SR_PPC <- NULL

#------------------------------------------------------------------------------#
# For Session 1
SR_N <- S1_PACC_N[,
                  .(sr = sd(accuracy)/sqrt(11)),
]
SR_PPC <- S1_PACC_PPC[,
                      .(sr = sd(accuracy)/sqrt(11)),
]

# P value
S1_PACC_N_P <- cbind(Sham ,S1_PACC_N)
S1_PACC_PPC_P <- cbind(PPC ,S1_PACC_PPC)
P1 <- rbind(S1_PACC_N_P, S1_PACC_PPC_P)
res1 <- t.test(accuracy~tDCS, data=P1,
               paired = TRUE, var.equal = FALSE)


S1_PACC_N <- S1_PACC_N[,
                       .(accuracy = mean(accuracy)),
]
S1_PACC_PPC <- S1_PACC_PPC[,
                           .(accuracy = mean(accuracy)),
]
session_bind_N <- rbind(session_bind_N, S1_PACC_N)
session_bind_PPC <- rbind(session_bind_PPC, S1_PACC_PPC)

#------------------------------------------------------------------------------#
# For Session 2
SR_N <- rbind(SR_N, S2_PACC_N[,
                              .(sr = sd(accuracy)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S2_PACC_PPC[,
                                    .(sr = sd(accuracy)/sqrt(11)),
])

# P value
S2_PACC_N_P <- cbind(Sham ,S2_PACC_N)
S2_PACC_PPC_P <- cbind(PPC ,S2_PACC_PPC)
P2 <- rbind(S2_PACC_N_P, S2_PACC_PPC_P)
res2 <- t.test(accuracy~tDCS, data=P2,
               paired = TRUE, var.equal = FALSE)

S2_PACC_N <- S2_PACC_N[,
                       .(accuracy = mean(accuracy)),
]
S2_PACC_PPC <- S2_PACC_PPC[,
                           .(accuracy = mean(accuracy)),
]
session_bind_N <- rbind(session_bind_N, S2_PACC_N)
session_bind_PPC <- rbind(session_bind_PPC, S2_PACC_PPC)

#------------------------------------------------------------------------------#
# For Session 3
SR_N <- rbind(SR_N, S3_PACC_N[,
                              .(sr = sd(accuracy)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S3_PACC_PPC[,
                                    .(sr = sd(accuracy)/sqrt(11)),
])

# P value
S3_PACC_N_P <- cbind(Sham ,S3_PACC_N)
S3_PACC_PPC_P <- cbind(PPC ,S3_PACC_PPC)
P3 <- rbind(S3_PACC_N_P, S3_PACC_PPC_P)
res3 <- t.test(accuracy~tDCS, data=P3, 
               paired = TRUE, var.equal = FALSE)

S3_PACC_N <- S3_PACC_N[,
                       .(accuracy = mean(accuracy)),
]
S3_PACC_PPC <- S3_PACC_PPC[,
                           .(accuracy = mean(accuracy)),
]
session_bind_N <- rbind(session_bind_N, S3_PACC_N)
session_bind_PPC <- rbind(session_bind_PPC, S3_PACC_PPC)

#------------------------------------------------------------------------------#
# For Session 4
SR_N <- rbind(SR_N, S4_PACC_N[,
                              .(sr = sd(accuracy)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S4_PACC_PPC[,
                                    .(sr = sd(accuracy)/sqrt(11)),
])

# P value
S4_PACC_N_P <- cbind(Sham ,S4_PACC_N)
S4_PACC_PPC_P <- cbind(PPC ,S4_PACC_PPC)
P4 <- rbind(S4_PACC_N_P, S4_PACC_PPC_P)
res4 <- t.test(accuracy~tDCS, data=P4, 
               paired = TRUE, var.equal = FALSE)

S4_PACC_N <- S4_PACC_N[,
                       .(accuracy = mean(accuracy)),
]
S4_PACC_PPC <- S4_PACC_PPC[,
                           .(accuracy = mean(accuracy)),
]
session_bind_N <- rbind(session_bind_N, S4_PACC_N)
session_bind_PPC <- rbind(session_bind_PPC, S4_PACC_PPC)

#------------------------------------------------------------------------------#
# For Session 5
SR_N <- rbind(SR_N, S5_PACC_N[,
                              .(sr = sd(accuracy)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S5_PACC_PPC[,
                                    .(sr = sd(accuracy)/sqrt(11)),
])

# P value
S5_PACC_N_P <- cbind(Sham ,S5_PACC_N)
S5_PACC_PPC_P <- cbind(PPC ,S5_PACC_PPC)
P5 <- rbind(S5_PACC_N_P, S5_PACC_PPC_P)
res5 <- t.test(accuracy~tDCS, data=P5,
               paired = TRUE, var.equal = FALSE)

S5_PACC_N <- S5_PACC_N[,
                       .(accuracy = mean(accuracy)),
]
S5_PACC_PPC <- S5_PACC_PPC[,
                           .(accuracy = mean(accuracy)),
]
session_bind_N <- rbind(session_bind_N, S5_PACC_N)
session_bind_PPC <- rbind(session_bind_PPC, S5_PACC_PPC)

#------------------------------------------------------------------------------#
# For Session 6
SR_N <- rbind(SR_N, S6_PACC_N[,
                              .(sr = sd(accuracy)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S6_PACC_PPC[,
                                    .(sr = sd(accuracy)/sqrt(11)),
])

# P value
S6_PACC_N_P <- cbind(Sham ,S6_PACC_N)
S6_PACC_PPC_P <- cbind(PPC ,S6_PACC_PPC)
P6 <- rbind(S6_PACC_N_P, S6_PACC_PPC_P)
res6 <- t.test(accuracy~tDCS, data=P6,
               paired = TRUE, var.equal = FALSE)

S6_PACC_N <- S6_PACC_N[,
                       .(accuracy = mean(accuracy)),
]
S6_PACC_PPC <- S6_PACC_PPC[,
                           .(accuracy = mean(accuracy)),
]
session_bind_N <- rbind(session_bind_N, S6_PACC_N)
session_bind_PPC <- rbind(session_bind_PPC, S6_PACC_PPC)


session_bind_N <- cbind(Sham, session_bind_N, SR_N)
session_bind_PPC <- cbind(PPC, session_bind_PPC, SR_PPC)

session_bind_all <- rbind(session_bind_N, session_bind_PPC)
session_bind_all <- cbind(block, session_bind_all)
#------------------------------------------------------------------------------#
# ACC tendency between sessions (in graphs)

PACCa <- aov(Blocks~accuracy, data=session_bind_all)

g1 <- ggplot(data = session_bind_all,
             aes(x = Blocks, y = accuracy, group = tDCS, color = tDCS)) + geom_line(size=1)
g1 <- g1 + geom_errorbar(aes(ymin = accuracy-sr, ymax = accuracy+sr), width = 0.2) + geom_point(size = 3)
g1 <- g1 + ggtitle("Simple accuracy in phasic alertness task") + theme(plot.title = element_text(hjust=0.5))
#g1 <- g1 + annotate(geom="text", x=6, y=1, label="p=0.5")
plot(g1)

# P value based on student paired t-test

print(res1$p.value)
print(res2$p.value)
print(res3$p.value)
print(res4$p.value)
print(res5$p.value)
print(res6$p.value)

# https://blog.naver.com/nife0719/221000580841