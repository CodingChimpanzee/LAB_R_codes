# See Executive Vigilance task response time in session period

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

# Total EV
EVS_RT <- NULL
# EV in PPC
EVS_RT_PPC <- NULL
# EV in SHAM
EVS_RT_N <- NULL

#------------------------------------------------------------------------------#
# For Session 1
S1_EVRT_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_1_N")
for(file in S1_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC==1),
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  S1_EVRT_N <- rbind(S1_EVRT_N, temp)
}
EVS_RT <- rbind(EVS_RT, S1_EVRT_N)
EVS_RT_N <- rbind(EVS_RT_N, S1_EVRT_N)


S1_EVRT_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_1_PPC")
for(file in S1_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC==1),
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  S1_EVRT_PPC <- rbind(S1_EVRT_PPC, temp)
}
EVS_RT <- rbind(EVS_RT, S1_EVRT_PPC)
EVS_RT_PPC <- rbind(EVS_RT_PPC, S1_EVRT_PPC)
#------------------------------------------------------------------------------#
# For Session 2
S2_EVRT_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_2_N")
for(file in S2_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC==1),
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  S2_EVRT_N <- rbind(S2_EVRT_N, temp)
}
EVS_RT <- rbind(EVS_RT, S2_EVRT_N)
EVS_RT_N <- rbind(EVS_RT_N, S2_EVRT_N)


S2_EVRT_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_2_PPC")
for(file in S2_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC==1),
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  S2_EVRT_PPC <- rbind(S2_EVRT_PPC, temp)
}
EVS_RT <- rbind(EVS_RT, S2_EVRT_PPC)
EVS_RT_PPC <- rbind(EVS_RT_PPC, S2_EVRT_PPC)
#------------------------------------------------------------------------------#
# For Session 3
S3_EVRT_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_3_N")
for(file in S3_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC==1),
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  S3_EVRT_N <- rbind(S3_EVRT_N, temp)
}
EVS_RT <- rbind(EVS_RT, S3_EVRT_N)
EVS_RT_N <- rbind(EVS_RT_N, S3_EVRT_N)


S3_EVRT_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_3_PPC")
for(file in S3_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC==1),
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  S3_EVRT_PPC <- rbind(S3_EVRT_PPC, temp)
}
EVS_RT <- rbind(EVS_RT, S3_EVRT_PPC)
EVS_RT_PPC <- rbind(EVS_RT_PPC, S3_EVRT_PPC)
#------------------------------------------------------------------------------#
# For Session 4
S4_EVRT_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_4_N")
for(file in S4_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC==1),
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  S4_EVRT_N <- rbind(S4_EVRT_N, temp)
}
EVS_RT <- rbind(EVS_RT, S4_EVRT_N)
EVS_RT_N <- rbind(EVS_RT_N, S4_EVRT_N)


S4_EVRT_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_4_PPC")
for(file in S4_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC==1),
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  S4_EVRT_PPC <- rbind(S4_EVRT_PPC, temp)
}
EVS_RT <- rbind(EVS_RT, S4_EVRT_PPC)
EVS_RT_PPC <- rbind(EVS_RT_PPC, S4_EVRT_PPC)
#------------------------------------------------------------------------------#
# For Session 5
S5_EVRT_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_5_N")
for(file in S5_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC==1),
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  S5_EVRT_N <- rbind(S5_EVRT_N, temp)
}
EVS_RT <- rbind(EVS_RT, S5_EVRT_N)
EVS_RT_N <- rbind(EVS_RT_N, S5_EVRT_N)


S5_EVRT_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_5_PPC")
for(file in S5_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC==1),
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  S5_EVRT_PPC <- rbind(S5_EVRT_PPC, temp)
}
EVS_RT <- rbind(EVS_RT, S5_EVRT_PPC)
EVS_RT_PPC <- rbind(EVS_RT_PPC, S5_EVRT_PPC)
#------------------------------------------------------------------------------#
# For Session 6
S6_EVRT_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_6_N")
for(file in S6_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC==1),
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  S6_EVRT_N <- rbind(S6_EVRT_N, temp)
}
EVS_RT <- rbind(EVS_RT, S6_EVRT_N)
EVS_RT_N <- rbind(EVS_RT_N, S6_EVRT_N)


S6_EVRT_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_6_PPC")
for(file in S6_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC==1),
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  S6_EVRT_PPC <- rbind(S6_EVRT_PPC, temp)
}
EVS_RT <- rbind(EVS_RT, S6_EVRT_PPC)
EVS_RT_PPC <- rbind(EVS_RT_PPC, S6_EVRT_PPC)
#------------------------------------------------------------------------------#
# RT tendency by sessions
session_bindEVRT_N <- NULL
session_bindEVRT_PPC <- NULL
SR_N <- NULL
SD_N <- NULL
SR_PPC <- NULL
SD_PPC <- NULL

#------------------------------------------------------------------------------#
# For Session 1
SR_N <- rbind(SR_N, S1_EVRT_N[,
                               .(sr = sd(mean_by_one_file)/sqrt(163)),
])
SR_PPC <- rbind(SR_PPC, S1_EVRT_PPC[,
                                     .(sr = sd(mean_by_one_file)/sqrt(170)),
])
SD_N <- rbind(SD_N, S1_EVRT_N[,
                              .(sd = sd(mean_by_one_file)),
])
SD_PPC <- rbind(SD_PPC, S1_EVRT_PPC[,
                                    .(sd = sd(mean_by_one_file)),
])

# P value
S1_EVRT_N_P <- cbind(Sham ,S1_EVRT_N)
S1_EVRT_PPC_P <- cbind(PPC ,S1_EVRT_PPC)
P1 <- rbind(S1_EVRT_N_P, S1_EVRT_PPC_P)
res1 <- t.test(mean_by_one_file~tDCS, data=P1, var.equal = FALSE, alternative = "less")

S1_EVRT_N_T <- S1_EVRT_N[,
                       .(mean_RT = mean(mean_by_one_file)),
]
S1_EVRT_PPC_T <- S1_EVRT_PPC[,
                           .(mean_RT = mean(mean_by_one_file)),
]
session_bindEVRT_N <- rbind(session_bindEVRT_N, S1_EVRT_N_T)
session_bindEVRT_PPC <- rbind(session_bindEVRT_PPC, S1_EVRT_PPC_T)
print(session_bindEVRT_N)
print(session_bindEVRT_PPC)

#------------------------------------------------------------------------------#
# For Session 2
SR_N <- rbind(SR_N, S2_EVRT_N[,
                              .(sr = sd(mean_by_one_file)/sqrt(167)),
])
SR_PPC <- rbind(SR_PPC, S2_EVRT_PPC[,
                                    .(sr = sd(mean_by_one_file)/sqrt(168)),
])
SD_N <- rbind(SD_N, S2_EVRT_N[,
                              .(sd = sd(mean_by_one_file)),
])
SD_PPC <- rbind(SD_PPC, S2_EVRT_PPC[,
                                    .(sd = sd(mean_by_one_file)),
])

# P value
S2_EVRT_N_P <- cbind(Sham ,S2_EVRT_N)
S2_EVRT_PPC_P <- cbind(PPC ,S2_EVRT_PPC)
P2 <- rbind(S2_EVRT_N_P, S2_EVRT_PPC_P)
res2 <- t.test(mean_by_one_file~tDCS, data=P2, var.equal = FALSE, alternative = "less")

S2_EVRT_N_T <- S2_EVRT_N[,
                       .(mean_RT = mean(mean_by_one_file)),
]
S2_EVRT_PPC_T <- S2_EVRT_PPC[,
                           .(mean_RT = mean(mean_by_one_file)),
]
session_bindEVRT_N <- rbind(session_bindEVRT_N, S2_EVRT_N_T)
session_bindEVRT_PPC <- rbind(session_bindEVRT_PPC, S2_EVRT_PPC_T)

#------------------------------------------------------------------------------#
# For Session 3
SR_N <- rbind(SR_N, S3_EVRT_N[,
                              .(sr = sd(mean_by_one_file)/sqrt(172)),
])
SR_PPC <- rbind(SR_PPC, S3_EVRT_PPC[,
                                    .(sr = sd(mean_by_one_file)/sqrt(162)),
])
SD_N <- rbind(SD_N, S3_EVRT_N[,
                              .(sd = sd(mean_by_one_file)),
])
SD_PPC <- rbind(SD_PPC, S3_EVRT_PPC[,
                                    .(sd = sd(mean_by_one_file)),
])

# P value
S3_EVRT_N_P <- cbind(Sham ,S3_EVRT_N)
S3_EVRT_PPC_P <- cbind(PPC ,S3_EVRT_PPC)
P3 <- rbind(S3_EVRT_N_P, S3_EVRT_PPC_P)
res3 <- t.test(mean_by_one_file~tDCS, data=P3, var.equal = FALSE, alternative = "less")

S3_EVRT_N_T <- S3_EVRT_N[,
                       .(mean_RT = mean(mean_by_one_file)),
]
S3_EVRT_PPC_T <- S3_EVRT_PPC[,
                           .(mean_RT = mean(mean_by_one_file)),
]
session_bindEVRT_N <- rbind(session_bindEVRT_N, S3_EVRT_N_T)
session_bindEVRT_PPC <- rbind(session_bindEVRT_PPC, S3_EVRT_PPC_T)

#------------------------------------------------------------------------------#
# For Session 4
SR_N <- rbind(SR_N, S4_EVRT_N[,
                              .(sr = sd(mean_by_one_file)/sqrt(162)),
])
SR_PPC <- rbind(SR_PPC, S4_EVRT_PPC[,
                                    .(sr = sd(mean_by_one_file)/sqrt(163)),
])
SD_N <- rbind(SD_N, S4_EVRT_N[,
                              .(sd = sd(mean_by_one_file)),
])
SD_PPC <- rbind(SD_PPC, S4_EVRT_PPC[,
                                    .(sd = sd(mean_by_one_file)),
])

# P value
S4_EVRT_N_P <- cbind(Sham ,S4_EVRT_N)
S4_EVRT_PPC_P <- cbind(PPC ,S4_EVRT_PPC)
P4 <- rbind(S4_EVRT_N_P, S4_EVRT_PPC_P)
res4 <- t.test(mean_by_one_file~tDCS, data=P4, var.equal = FALSE, alternative = "less")

S4_EVRT_N_T <- S4_EVRT_N[,
                       .(mean_RT = mean(mean_by_one_file)),
]
S4_EVRT_PPC_T <- S4_EVRT_PPC[,
                           .(mean_RT = mean(mean_by_one_file)),
]
session_bindEVRT_N <- rbind(session_bindEVRT_N, S4_EVRT_N_T)
session_bindEVRT_PPC <- rbind(session_bindEVRT_PPC, S4_EVRT_PPC_T)

#------------------------------------------------------------------------------#
# For Session 5
SR_N <- rbind(SR_N, S5_EVRT_N[,
                              .(sr = sd(mean_by_one_file)/sqrt(165)),
])
SR_PPC <- rbind(SR_PPC, S5_EVRT_PPC[,
                                    .(sr = sd(mean_by_one_file)/sqrt(163)),
])
SD_N <- rbind(SD_N, S5_EVRT_N[,
                              .(sd = sd(mean_by_one_file)),
])
SD_PPC <- rbind(SD_PPC, S5_EVRT_PPC[,
                                    .(sd = sd(mean_by_one_file)),
])

# P value
S5_EVRT_N_P <- cbind(Sham ,S5_EVRT_N)
S5_EVRT_PPC_P <- cbind(PPC ,S5_EVRT_PPC)
P5 <- rbind(S5_EVRT_N_P, S5_EVRT_PPC_P)
res5 <- t.test(mean_by_one_file~tDCS, data=P5, var.equal = FALSE, alternative = "less")

S5_EVRT_N_T <- S5_EVRT_N[,
                       .(mean_RT = mean(mean_by_one_file)),
]
S5_EVRT_PPC_T <- S5_EVRT_PPC[,
                           .(mean_RT = mean(mean_by_one_file)),
]
session_bindEVRT_N <- rbind(session_bindEVRT_N, S5_EVRT_N_T)
session_bindEVRT_PPC <- rbind(session_bindEVRT_PPC, S5_EVRT_PPC_T)

#------------------------------------------------------------------------------#
# For Session 6
SR_N <- rbind(SR_N, S6_EVRT_N[,
                              .(sr = sd(mean_by_one_file)/sqrt(167)),
])
SR_PPC <- rbind(SR_PPC, S6_EVRT_PPC[,
                                    .(sr = sd(mean_by_one_file)/sqrt(159)),
])
SD_N <- rbind(SD_N, S6_EVRT_N[,
                              .(sd = sd(mean_by_one_file)),
])
SD_PPC <- rbind(SD_PPC, S6_EVRT_PPC[,
                                    .(sd = sd(mean_by_one_file)),
])

# P value
S6_EVRT_N_P <- cbind(Sham ,S6_EVRT_N)
S6_EVRT_PPC_P <- cbind(PPC ,S6_EVRT_PPC)
P6 <- rbind(S6_EVRT_N_P, S6_EVRT_PPC_P)
res6 <- t.test(mean_by_one_file~tDCS, data=P6, var.equal = FALSE, alternative = "less")

S6_EVRT_N_T <- S6_EVRT_N[,
                       .(mean_RT = mean(mean_by_one_file)),
]
S6_EVRT_PPC_T <- S6_EVRT_PPC[,
                           .(mean_RT = mean(mean_by_one_file)),
]
session_bindEVRT_N <- rbind(session_bindEVRT_N, S6_EVRT_N_T)
session_bindEVRT_PPC <- rbind(session_bindEVRT_PPC, S6_EVRT_PPC_T)



session_bindEVRT_N <- cbind(Sham, session_bindEVRT_N, SR_N)
session_bindEVRT_PPC <- cbind(PPC, session_bindEVRT_PPC, SR_PPC)

session_bindEVRT_all <- rbind(session_bindEVRT_N, session_bindEVRT_PPC)
session_bindEVRT_all <- cbind(block, session_bindEVRT_all)

SD_N <- cbind(Sham, SD_N)
SD_PPC <- cbind(PPC, SD_PPC)
session_bind_SD <- rbind(SD_N, SD_PPC)
session_bind_SD <- cbind(block, session_bind_SD)
#------------------------------------------------------------------------------#
# Now for the plots


# Plot 1: Draw a Mean of RT and it's SE(Standard Error)

g1 <- ggplot(data = session_bindEVRT_all,
             aes(x = Blocks, y = mean_RT, group = tDCS, color = tDCS)) + geom_line(size=1)
g1 <- g1 + geom_errorbar(aes(ymin = mean_RT-sr, ymax = mean_RT+sr), width = 0.2) + geom_point(size = 3)
g1 <- g1 + ggtitle("Response Time in Executive vigilance task") + theme(plot.title = element_text(hjust=0.5))
g1 <- g1 + annotate(geom="text", x=3.1, y=555, label="*", size = 10) + annotate(geom="text", x=3.1, y=582, label="*", size = 10)
plot(g1)


# Plot 2: Draw a SD(Standard Deviation) of RT

#g2 <- ggplot(data = session_bind_SD,
#             aes(x = Blocks, y = sd, group = tDCS, color = tDCS)) + geom_line(size=1)
#g2 <- g2 + geom_errorbar(aes(ymin = sd-sr, ymax = sd+sr), width = 0.2)
#plot(g2)

# P value based on student paired t-test

print(res1$p.value)
print(res2$p.value)
print(res3$p.value)
print(res4$p.value)
print(res5$p.value)
print(res6$p.value)

