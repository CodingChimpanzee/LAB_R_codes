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
                 by = Trial]
  S1_PACC_N <- rbind(S1_PACC_N, temp)
}
PAS_ACC_N <- rbind(PAS_ACC_N, S1_PACC_N)

S1_PACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_1_PPC")
for(file in S1_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
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
                 by = Trial]
  S2_PACC_N <- rbind(S2_PACC_N, temp)
}
PAS_ACC_N <- rbind(PAS_ACC_N, S2_PACC_N)

S2_PACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_2_PPC")
for(file in S2_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
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
                 by = Trial]
  S3_PACC_N <- rbind(S3_PACC_N, temp)
}
PAS_ACC_N <- rbind(PAS_ACC_N, S3_PACC_N)

S3_PACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_3_PPC")
for(file in S3_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
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
                 by = Trial]
  S4_PACC_N <- rbind(S4_PACC_N, temp)
}
PAS_ACC_N <- rbind(PAS_ACC_N, S4_PACC_N)

S4_PACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_4_PPC")
for(file in S4_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
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
                 by = Trial]
  S5_PACC_N <- rbind(S5_PACC_N, temp)
}
PAS_ACC_N <- rbind(PAS_ACC_N, S5_PACC_N)

S5_PACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_5_PPC")
for(file in S5_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
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
                 by = Trial]
  S6_PACC_N <- rbind(S6_PACC_N, temp)
}
PAS_ACC_N <- rbind(PAS_ACC_N, S6_PACC_N)

S6_PACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_6_PPC")
for(file in S6_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct!="SPACE",
                 .(accuracy = sum(PracStimulus.ACC)),
                 by = Trial]
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
                .(sr = sd(accuracy)/sqrt(528)),
]
SR_PPC <- S1_PACC_PPC[,
                  .(sr = sd(accuracy)/sqrt(528)),
]
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
                  .(sr = sd(accuracy)/sqrt(528)),
])
SR_PPC <- rbind(SR_PPC, S2_PACC_PPC[,
                    .(sr = sd(accuracy)/sqrt(528)),
])
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
                              .(sr = sd(accuracy)/sqrt(528)),
])
SR_PPC <- rbind(SR_PPC, S3_PACC_PPC[,
                                    .(sr = sd(accuracy)/sqrt(528)),
])
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
                              .(sr = sd(accuracy)/sqrt(528)),
])
SR_PPC <- rbind(SR_PPC, S4_PACC_PPC[,
                                    .(sr = sd(accuracy)/sqrt(528)),
])
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
                              .(sr = sd(accuracy)/sqrt(528)),
])
SR_PPC <- rbind(SR_PPC, S5_PACC_PPC[,
                                    .(sr = sd(accuracy)/sqrt(528)),
])
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
                              .(sr = sd(accuracy)/sqrt(528)),
])
SR_PPC <- rbind(SR_PPC, S6_PACC_PPC[,
                                    .(sr = sd(accuracy)/sqrt(528)),
])
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
g1 <- g1 + ggtitle("Accuracy in phasic alertness task") + theme(plot.title = element_text(hjust=0.5))
g1 <- g1 + annotate(geom="text", x=6, y=1, label="p=0.5")
plot(g1)

# https://blog.naver.com/nife0719/221000580841