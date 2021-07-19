# See Executive Vigilance task FA(FA) in session period

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

#PPC tDCS EV FA value in Session
EVS_FA_PPC <- NULL

#Sham tDCS EV FA value in Session
EVS_FA_N <- NULL

#------------------------------------------------------------------------------#
# For Session 1
S1_EVFA_N <- NULL
value_check <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_1_N")
for(file in S1_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC!=1),
                 .(FA = sum(PracStimulus.ACC+1)),
                 by = Trial]
  value_check <- cbind(value_check, temp)
  temp <- sum(temp[,2])/64
  temp <- as.data.table(temp)
#  if (!is.na(temp[1])){
    S1_EVFA_N <- rbind(S1_EVFA_N, temp)}
#}
EVS_FA_N <- rbind(EVS_FA_N, S1_EVFA_N)

S1_EVFA_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_1_PPC")
for(file in S1_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC!=1),
                 .(FA = sum(PracStimulus.ACC+1)),
                 by = Trial]
  temp <- sum(temp[,2])/64
  temp <- as.data.table(temp)
#  if (!is.na(temp[1])){
  S1_EVFA_PPC <- rbind(S1_EVFA_PPC, temp)}
#}
EVS_FA_PPC <- rbind(EVS_FA_PPC, S1_EVFA_PPC)
#------------------------------------------------------------------------------#
# For Session 2
S2_EVFA_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_2_N")
for(file in S2_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC!=1),
                 .(FA = sum(PracStimulus.ACC+1)),
                 by = Trial]
  temp <- sum(temp[,2])/64
  temp <- as.data.table(temp)
  temp <- as.data.table(temp)
#  if (!is.na(temp[1])){
    S2_EVFA_N <- rbind(S2_EVFA_N, temp)}
#}
EVS_FA_N <- rbind(EVS_FA_N, S2_EVFA_N)

S2_EVFA_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_2_PPC")
for(file in S2_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC!=1),
                 .(FA = sum(PracStimulus.ACC+1)),
                 by = Trial]
  temp <- sum(temp[,2])/64
  temp <- as.data.table(temp)
#  if (!is.na(temp[1])){
    S2_EVFA_PPC <- rbind(S2_EVFA_PPC, temp)}
#}
EVS_FA_PPC <- rbind(EVS_FA_PPC, S2_EVFA_PPC)
#------------------------------------------------------------------------------#
# For Session 3
S3_EVFA_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_3_N")
for(file in S3_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC!=1),
                 .(FA = sum(PracStimulus.ACC+1)),
                 by = Trial]
  temp <- sum(temp[,2])/64
  temp <- as.data.table(temp)
#  if (!is.na(temp[1])){
    S3_EVFA_N <- rbind(S3_EVFA_N, temp)}
#}
EVS_FA_N <- rbind(EVS_FA_N, S3_EVFA_N)

S3_EVFA_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_3_PPC")
for(file in S3_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC!=1),
                 .(FA = sum(PracStimulus.ACC+1)),
                 by = Trial]
  temp <- sum(temp[,2])/64
  temp <- as.data.table(temp)
#  if (!is.na(temp[1])){
    S3_EVFA_PPC <- rbind(S3_EVFA_PPC, temp)}
#}
EVS_FA_PPC <- rbind(EVS_FA_PPC, S3_EVFA_PPC)
#------------------------------------------------------------------------------#
# For Session 4
S4_EVFA_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_4_N")
for(file in S4_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC!=1),
                 .(FA = sum(PracStimulus.ACC+1)),
                 by = Trial]
  temp <- sum(temp[,2])/64
  temp <- as.data.table(temp)
#  if (!is.na(temp[1])){
    S4_EVFA_N <- rbind(S4_EVFA_N, temp)}
#}
EVS_FA_N <- rbind(EVS_FA_N, S4_EVFA_N)

S4_EVFA_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_4_PPC")
for(file in S4_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC!=1),
                 .(FA = sum(PracStimulus.ACC+1)),
                 by = Trial]
  temp <- sum(temp[,2])/64
  temp <- as.data.table(temp)
#  if (!is.na(temp[1])){
    S4_EVFA_PPC <- rbind(S4_EVFA_PPC, temp)}
#}
EVS_FA_PPC <- rbind(EVS_FA_PPC, S4_EVFA_PPC)
#------------------------------------------------------------------------------#
# For Session 5
S5_EVFA_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_5_N")
for(file in S5_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC!=1),
                 .(FA = sum(PracStimulus.ACC+1)),
                 by = Trial]
  temp <- sum(temp[,2])/64
  temp <- as.data.table(temp)
#  if (!is.na(temp[1])){
    S5_EVFA_N <- rbind(S5_EVFA_N, temp)}
#}
EVS_FA_N <- rbind(EVS_FA_N, S5_EVFA_N)

S5_EVFA_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_5_PPC")
for(file in S5_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC!=1),
                 .(FA = sum(PracStimulus.ACC+1)),
                 by = Trial]
  temp <- sum(temp[,2])/64
  temp <- as.data.table(temp)
#  if (!is.na(temp[1])){
    S5_EVFA_PPC <- rbind(S5_EVFA_PPC, temp)}
#}
EVS_FA_PPC <- rbind(EVS_FA_PPC, S5_EVFA_PPC)
#------------------------------------------------------------------------------#
# For Session 6
S6_EVFA_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_6_N")
for(file in S6_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC!=1),
                 .(FA = sum(PracStimulus.ACC+1)),
                 by = Trial]
  temp <- sum(temp[,2])/64
  temp <- as.data.table(temp)
#  if (!is.na(temp[1])){
    S6_EVFA_N <- rbind(S6_EVFA_N, temp)}
#}
EVS_FA_N <- rbind(EVS_FA_N, S6_EVFA_N)

S6_EVFA_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_6_PPC")
for(file in S6_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(Correct=="SPACE")&(PracStimulus.ACC!=1),
                 .(FA = sum(PracStimulus.ACC+1)),
                 by = Trial]
  temp <- sum(temp[,2])/64
  temp <- as.data.table(temp)
#  if (!is.na(temp[1])){
    S6_EVFA_PPC <- rbind(S6_EVFA_PPC, temp)}
#}
EVS_FA_PPC <- rbind(EVS_FA_PPC, S6_EVFA_PPC)

#------------------------------------------------------------------------------#
# FA tendency by sessions
session_bindEVFA_N <- NULL
session_bindEVFA_PPC <- NULL
SR_N <- NULL
SR_PPC <- NULL

# Put zero in na value rows in all SX_EVFA_N(PPC)
S1_EVFA_N[is.na(S1_EVFA_N)] <- 0
S1_EVFA_PPC[is.na(S1_EVFA_PPC)] <- 0
S2_EVFA_N[is.na(S2_EVFA_N)] <- 0
S2_EVFA_PPC[is.na(S2_EVFA_PPC)] <- 0
S3_EVFA_N[is.na(S3_EVFA_N)] <- 0
S3_EVFA_PPC[is.na(S3_EVFA_PPC)] <- 0
S4_EVFA_N[is.na(S4_EVFA_N)] <- 0
S4_EVFA_PPC[is.na(S4_EVFA_PPC)] <- 0
S5_EVFA_N[is.na(S5_EVFA_N)] <- 0
S5_EVFA_PPC[is.na(S5_EVFA_PPC)] <- 0
S6_EVFA_N[is.na(S6_EVFA_N)] <- 0
S6_EVFA_PPC[is.na(S6_EVFA_PPC)] <- 0
S1_EVFA_PPC

#------------------------------------------------------------------------------#
# For Session 1
SR_N <- rbind(SR_N, S1_EVFA_N[,
                               .(sr = sd(temp)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S1_EVFA_PPC[,
                                     .(sr = sd(temp)/sqrt(11)),
])

# P value
S1_EVFA_N_P <- cbind(Sham ,S1_EVFA_N)
S1_EVFA_PPC_P <- cbind(PPC ,S1_EVFA_PPC)
P1 <- rbind(S1_EVFA_N_P, S1_EVFA_PPC_P)
res1 <- t.test(temp~tDCS, data=P1, var.equal = FALSE)

S1_EVFA_N <- S1_EVFA_N[,
                         .(FA = sum(temp)/11),
]
S1_EVFA_PPC <- S1_EVFA_PPC[,
                             .(FA = sum(temp)/11),
]
session_bindEVFA_N <- rbind(session_bindEVFA_N, S1_EVFA_N)
session_bindEVFA_PPC <- rbind(session_bindEVFA_PPC, S1_EVFA_PPC)

#------------------------------------------------------------------------------#
# For Session 2
SR_N <- rbind(SR_N, S2_EVFA_N[,
                               .(sr = sd(temp)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S2_EVFA_PPC[,
                                     .(sr = sd(temp)/sqrt(11)),
])

# P value
S2_EVFA_N_P <- cbind(Sham ,S2_EVFA_N)
S2_EVFA_PPC_P <- cbind(PPC ,S2_EVFA_PPC)
P2 <- rbind(S2_EVFA_N_P, S2_EVFA_PPC_P)
res2 <- t.test(temp~tDCS, data=P2, var.equal = FALSE)

S2_EVFA_N <- S2_EVFA_N[,
                         .(FA = sum(temp)/11),
]
S2_EVFA_PPC <- S2_EVFA_PPC[,
                             .(FA = sum(temp)/11),
]
session_bindEVFA_N <- rbind(session_bindEVFA_N, S2_EVFA_N)
session_bindEVFA_PPC <- rbind(session_bindEVFA_PPC, S2_EVFA_PPC)

#------------------------------------------------------------------------------#
# For Session 3
SR_N <- rbind(SR_N, S3_EVFA_N[,
                               .(sr = sd(temp)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S3_EVFA_PPC[,
                                     .(sr = sd(temp)/sqrt(11)),
])

# P value
S3_EVFA_N_P <- cbind(Sham ,S3_EVFA_N)
S3_EVFA_PPC_P <- cbind(PPC ,S3_EVFA_PPC)
P3 <- rbind(S3_EVFA_N_P, S3_EVFA_PPC_P)
res3 <- t.test(temp~tDCS, data=P3, var.equal = FALSE)

S3_EVFA_N <- S3_EVFA_N[,
                         .(FA = sum(temp)/11),
]
S3_EVFA_PPC <- S3_EVFA_PPC[,
                             .(FA = sum(temp)/11),
]
session_bindEVFA_N <- rbind(session_bindEVFA_N, S3_EVFA_N)
session_bindEVFA_PPC <- rbind(session_bindEVFA_PPC, S3_EVFA_PPC)

#------------------------------------------------------------------------------#
# For Session 4
SR_N <- rbind(SR_N, S4_EVFA_N[,
                               .(sr = sd(temp)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S4_EVFA_PPC[,
                                     .(sr = sd(temp)/sqrt(11)),
])

# P value
S4_EVFA_N_P <- cbind(Sham ,S4_EVFA_N)
S4_EVFA_PPC_P <- cbind(PPC ,S4_EVFA_PPC)
P4 <- rbind(S4_EVFA_N_P, S4_EVFA_PPC_P)
res4 <- t.test(temp~tDCS, data=P4, var.equal = FALSE)

S4_EVFA_N <- S4_EVFA_N[,
                         .(FA = sum(temp)/11),
]
S4_EVFA_PPC <- S4_EVFA_PPC[,
                             .(FA = sum(temp)/11),
]
session_bindEVFA_N <- rbind(session_bindEVFA_N, S4_EVFA_N)
session_bindEVFA_PPC <- rbind(session_bindEVFA_PPC, S4_EVFA_PPC)

#------------------------------------------------------------------------------#
# For Session 5
SR_N <- rbind(SR_N, S5_EVFA_N[,
                               .(sr = sd(temp)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S5_EVFA_PPC[,
                                     .(sr = sd(temp)/sqrt(11)),
])

# P value
S5_EVFA_N_P <- cbind(Sham ,S5_EVFA_N)
S5_EVFA_PPC_P <- cbind(PPC ,S5_EVFA_PPC)
P5 <- rbind(S5_EVFA_N_P, S5_EVFA_PPC_P)
res5 <- t.test(temp~tDCS, data=P5, var.equal = FALSE)

S5_EVFA_N <- S5_EVFA_N[,
                         .(FA = sum(temp)/11),
]
S5_EVFA_PPC <- S5_EVFA_PPC[,
                             .(FA = sum(temp)/11),
]
session_bindEVFA_N <- rbind(session_bindEVFA_N, S5_EVFA_N)
session_bindEVFA_PPC <- rbind(session_bindEVFA_PPC, S5_EVFA_PPC)

#------------------------------------------------------------------------------#
# For Session 6
SR_N <- rbind(SR_N, S6_EVFA_N[,
                               .(sr = sd(temp)/sqrt(11)),
])
SR_PPC <- rbind(SR_PPC, S6_EVFA_PPC[,
                                     .(sr = sd(temp)/sqrt(11)),
])

# P value
S6_EVFA_N_P <- cbind(Sham ,S6_EVFA_N)
S6_EVFA_PPC_P <- cbind(PPC ,S6_EVFA_PPC)
P6 <- rbind(S6_EVFA_N_P, S6_EVFA_PPC_P)
res6 <- t.test(temp~tDCS, data=P6, var.equal = FALSE)

S6_EVFA_N <- S6_EVFA_N[,
                         .(FA = sum(temp)/11),
]
S6_EVFA_PPC <- S6_EVFA_PPC[,
                             .(FA = sum(temp)/11),
]
session_bindEVFA_N <- rbind(session_bindEVFA_N, S6_EVFA_N)
session_bindEVFA_PPC <- rbind(session_bindEVFA_PPC, S6_EVFA_PPC)



session_bindEVFA_N <- cbind(Sham, session_bindEVFA_N, SR_N)
session_bindEVFA_PPC <- cbind(PPC, session_bindEVFA_PPC, SR_PPC)

session_bind_all_EVFA <- rbind(session_bindEVFA_N, session_bindEVFA_PPC)
session_bind_all_EVFA <- cbind(block, session_bind_all_EVFA)

#------------------------------------------------------------------------------#
# FA tendency between sessions (in graphs)


g1 <- ggplot(data = session_bind_all_EVFA,
             aes(x = Blocks, y = FA, group = tDCS, color = tDCS)) + geom_line(size=1)
g1 <- g1 + geom_errorbar(aes(ymin = FA-sr, ymax = FA+sr), width = 0.2) + geom_point(size = 3)
g1 <- g1 + ggtitle("FA in Executive vigilance task") + theme(plot.title = element_text(hjust=0.5))
#g1 <- g1 + annotate(geom="text", x=3.2, y=0.98, label="**", size = 10, colour = "red") + annotate(geom="text", x=3.2, y=0.91, label="**", size = 10, colour = "red")
g1 <- g1 + annotate(geom="text", x=3.1, y=0.021, label="*", size = 10) + annotate(geom="text", x=3.1, y=0.005, label="*", size = 10)
plot(g1)

# P value based on student paired t-test

print(res1$p.value)
print(res2$p.value)
print(res3$p.value)
print(res4$p.value)
print(res5$p.value)
print(res6$p.value)