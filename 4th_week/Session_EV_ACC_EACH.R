# See Executive Vigilance task accuracy(ACC) in session period

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

#Executive Vigilance tendency

#PPC tDCS EV ACC value in Session
EVS_ACC_PPC <- NULL

#Sham tDCS EV ACC value in Session
EVS_ACC_N <- NULL

#------------------------------------------------------------------------------#
# For Session 1
S1_EVACC_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_1_N")
for(file in S1_N){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
                 ]
  S1_EVACC_N <- rbind(S1_EVACC_N, temp)
}
EVS_ACC_N <- rbind(EVS_ACC_N, S1_EVACC_N)

S1_EVACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_1_PPC")
for(file in S1_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
                 ]
  S1_EVACC_PPC <- rbind(S1_EVACC_PPC, temp)
}
EVS_ACC_PPC <- rbind(EVS_ACC_PPC, S1_EVACC_PPC)
#------------------------------------------------------------------------------#
# For Session 2
S2_EVACC_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_2_N")
for(file in S2_N){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
  ]
  S2_EVACC_N <- rbind(S2_EVACC_N, temp)
}
EVS_ACC_N <- rbind(EVS_ACC_N, S2_EVACC_N)

S2_EVACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_2_PPC")
for(file in S2_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
  ]
  S2_EVACC_PPC <- rbind(S2_EVACC_PPC, temp)
}
EVS_ACC_PPC <- rbind(EVS_ACC_PPC, S2_EVACC_PPC)
#------------------------------------------------------------------------------#
# For Session 3
S3_EVACC_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_3_N")
for(file in S3_N){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
  ]
  S3_EVACC_N <- rbind(S3_EVACC_N, temp)
}
EVS_ACC_N <- rbind(EVS_ACC_N, S3_EVACC_N)

S3_EVACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_3_PPC")
for(file in S3_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
  ]
  S3_EVACC_PPC <- rbind(S3_EVACC_PPC, temp)
}
EVS_ACC_PPC <- rbind(EVS_ACC_PPC, S3_EVACC_PPC)
#------------------------------------------------------------------------------#
# For Session 4
S4_EVACC_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_4_N")
for(file in S4_N){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
  ]
  S4_EVACC_N <- rbind(S4_EVACC_N, temp)
}
EVS_ACC_N <- rbind(EVS_ACC_N, S4_EVACC_N)

S4_EVACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_4_PPC")
for(file in S4_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
  ]
  S4_EVACC_PPC <- rbind(S4_EVACC_PPC, temp)
}
EVS_ACC_PPC <- rbind(EVS_ACC_PPC, S4_EVACC_PPC)
#------------------------------------------------------------------------------#
# For Session 5
S5_EVACC_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_5_N")
for(file in S5_N){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
  ]
  S5_EVACC_N <- rbind(S5_EVACC_N, temp)
}
EVS_ACC_N <- rbind(EVS_ACC_N, S5_EVACC_N)

S5_EVACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_5_PPC")
for(file in S5_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
  ]
  S5_EVACC_PPC <- rbind(S5_EVACC_PPC, temp)
}
EVS_ACC_PPC <- rbind(EVS_ACC_PPC, S5_EVACC_PPC)
#------------------------------------------------------------------------------#
# For Session 6
S6_EVACC_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_6_N")
for(file in S6_N){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
  ]
  S6_EVACC_N <- rbind(S6_EVACC_N, temp)
}
EVS_ACC_N <- rbind(EVS_ACC_N, S6_EVACC_N)

S6_EVACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_6_PPC")
for(file in S6_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
  ]
  S6_EVACC_PPC <- rbind(S6_EVACC_PPC, temp)
}
EVS_ACC_PPC <- rbind(EVS_ACC_PPC, S6_EVACC_PPC)

#------------------------------------------------------------------------------#
# Accuracy tendency by sessions
session_bindEVACC_N <- NULL
session_bindEVACC_PPC <- NULL
SR_N <- NULL
SR_PPC <- NULL


#------------------------------------------------------------------------------#
# For Session 1
SR_N <- rbind(SR_N, S1_EVACC_N[,
                               .(sr = sd(accuracy)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S1_EVACC_PPC[,
                                     .(sr = sd(accuracy)/sqrt(11)),
])

# P value
S1_EVACC_N_P <- cbind(Sham ,S1_EVACC_N)
S1_EVACC_PPC_P <- cbind(PPC ,S1_EVACC_PPC)
P1 <- rbind(S1_EVACC_N_P, S1_EVACC_PPC_P)
res1 <- t.test(accuracy~tDCS, data=P1, paired = TRUE, var.equal = FALSE, alternative = "less")

S1_EVACC_N <- S1_EVACC_N[,
                         .(accuracy = mean(accuracy)),
]
S1_EVACC_PPC <- S1_EVACC_PPC[,
                             .(accuracy = mean(accuracy)),
]
session_bindEVACC_N <- rbind(session_bindEVACC_N, S1_EVACC_N)
session_bindEVACC_PPC <- rbind(session_bindEVACC_PPC, S1_EVACC_PPC)

#------------------------------------------------------------------------------#
# For Session 2
SR_N <- rbind(SR_N, S2_EVACC_N[,
                               .(sr = sd(accuracy)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S2_EVACC_PPC[,
                                     .(sr = sd(accuracy)/sqrt(11)),
])

# P value
S2_EVACC_N_P <- cbind(Sham ,S2_EVACC_N)
S2_EVACC_PPC_P <- cbind(PPC ,S2_EVACC_PPC)
P2 <- rbind(S2_EVACC_N_P, S2_EVACC_PPC_P)
res2 <- t.test(accuracy~tDCS, data=P2, paired = TRUE, var.equal = FALSE, alternative = "less")

S2_EVACC_N <- S2_EVACC_N[,
                         .(accuracy = mean(accuracy)),
]
S2_EVACC_PPC <- S2_EVACC_PPC[,
                             .(accuracy = mean(accuracy)),
]
session_bindEVACC_N <- rbind(session_bindEVACC_N, S2_EVACC_N)
session_bindEVACC_PPC <- rbind(session_bindEVACC_PPC, S2_EVACC_PPC)

#------------------------------------------------------------------------------#
# For Session 3
SR_N <- rbind(SR_N, S3_EVACC_N[,
                               .(sr = sd(accuracy)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S3_EVACC_PPC[,
                                     .(sr = sd(accuracy)/sqrt(11)),
])

# P value
S3_EVACC_N_P <- cbind(Sham ,S3_EVACC_N)
S3_EVACC_PPC_P <- cbind(PPC ,S3_EVACC_PPC)
P3 <- rbind(S3_EVACC_N_P, S3_EVACC_PPC_P)
res3 <- t.test(accuracy~tDCS, data=P3, paired = TRUE, var.equal = FALSE, alternative = "less")

S3_EVACC_N <- S3_EVACC_N[,
                         .(accuracy = mean(accuracy)),
]
S3_EVACC_PPC <- S3_EVACC_PPC[,
                             .(accuracy = mean(accuracy)),
]
session_bindEVACC_N <- rbind(session_bindEVACC_N, S3_EVACC_N)
session_bindEVACC_PPC <- rbind(session_bindEVACC_PPC, S3_EVACC_PPC)

#------------------------------------------------------------------------------#
# For Session 4
SR_N <- rbind(SR_N, S4_EVACC_N[,
                               .(sr = sd(accuracy)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S4_EVACC_PPC[,
                                     .(sr = sd(accuracy)/sqrt(11)),
])

# P value
S4_EVACC_N_P <- cbind(Sham ,S4_EVACC_N)
S4_EVACC_PPC_P <- cbind(PPC ,S4_EVACC_PPC)
P4 <- rbind(S4_EVACC_N_P, S4_EVACC_PPC_P)
res4 <- t.test(accuracy~tDCS, data=P4, paired = TRUE, var.equal = FALSE, alternative = "less")

S4_EVACC_N <- S4_EVACC_N[,
                         .(accuracy = mean(accuracy)),
]
S4_EVACC_PPC <- S4_EVACC_PPC[,
                             .(accuracy = mean(accuracy)),
]
session_bindEVACC_N <- rbind(session_bindEVACC_N, S4_EVACC_N)
session_bindEVACC_PPC <- rbind(session_bindEVACC_PPC, S4_EVACC_PPC)

#------------------------------------------------------------------------------#
# For Session 5
SR_N <- rbind(SR_N, S5_EVACC_N[,
                               .(sr = sd(accuracy)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S5_EVACC_PPC[,
                                     .(sr = sd(accuracy)/sqrt(11)),
])

# P value
S5_EVACC_N_P <- cbind(Sham ,S5_EVACC_N)
S5_EVACC_PPC_P <- cbind(PPC ,S5_EVACC_PPC)
P5 <- rbind(S5_EVACC_N_P, S5_EVACC_PPC_P)
res5 <- t.test(accuracy~tDCS, data=P5, paired = TRUE, var.equal = FALSE, alternative = "less")

S5_EVACC_N <- S5_EVACC_N[,
                         .(accuracy = mean(accuracy)),
]
S5_EVACC_PPC <- S5_EVACC_PPC[,
                             .(accuracy = mean(accuracy)),
]
session_bindEVACC_N <- rbind(session_bindEVACC_N, S5_EVACC_N)
session_bindEVACC_PPC <- rbind(session_bindEVACC_PPC, S5_EVACC_PPC)

#------------------------------------------------------------------------------#
# For Session 6
SR_N <- rbind(SR_N, S6_EVACC_N[,
                               .(sr = sd(accuracy)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S6_EVACC_PPC[,
                                     .(sr = sd(accuracy)/sqrt(11)),
])

# P value
S6_EVACC_N_P <- cbind(Sham ,S6_EVACC_N)
S6_EVACC_PPC_P <- cbind(PPC ,S6_EVACC_PPC)
P6 <- rbind(S6_EVACC_N_P, S6_EVACC_PPC_P)
res6 <- t.test(accuracy~tDCS, data=P6, paired = TRUE, var.equal = FALSE, alternative = "less")

S6_EVACC_N <- S6_EVACC_N[,
                         .(accuracy = mean(accuracy)),
]
S6_EVACC_PPC <- S6_EVACC_PPC[,
                             .(accuracy = mean(accuracy)),
]
session_bindEVACC_N <- rbind(session_bindEVACC_N, S6_EVACC_N)
session_bindEVACC_PPC <- rbind(session_bindEVACC_PPC, S6_EVACC_PPC)



session_bindEVACC_N <- cbind(Sham, session_bindEVACC_N, SR_N)
session_bindEVACC_PPC <- cbind(PPC, session_bindEVACC_PPC, SR_PPC)

session_bind_all_EVACC <- rbind(session_bindEVACC_N, session_bindEVACC_PPC)
session_bind_all_EVACC <- cbind(block, session_bind_all_EVACC)

#------------------------------------------------------------------------------#
# ACC tendency between sessions (in graphs)

g1 <- ggplot(data = session_bind_all_EVACC,
             aes(x = Blocks, y = accuracy, group = tDCS, color = tDCS)) + geom_line(size=1)
g1 <- g1 + geom_errorbar(aes(ymin = accuracy-sr, ymax = accuracy+sr), width = 0.2) + geom_point(size = 3)
g1 <- g1 + ggtitle("Accuracy in Executive vigilance task") + theme(plot.title = element_text(hjust=0.5))
#g1 <- g1 + ylim(0.55, 1)
g1 <- g1 + annotate(geom="text", x=3.2, y=0.98, label="**", size = 10, colour = "red") + annotate(geom="text", x=3.2, y=0.91, label="**", size = 10, colour = "red")
g1 <- g1 + annotate(geom="text", x=1.1, y=0.97, label="*", size = 10) + annotate(geom="text", x=1.1, y=0.92, label="*", size = 10)
plot(g1)

# P value based on student paired t-test

print(res1$p.value)
print(res2$p.value)
print(res3$p.value)
print(res4$p.value)
print(res5$p.value)
print(res6$p.value)