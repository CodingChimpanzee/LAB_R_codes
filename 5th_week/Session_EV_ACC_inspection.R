# See Executive Vigilance task accuracy(ACC) in session period

#import library
library(data.table)
library(ggplot2)
setwd("C:/Users/Biocomputing/Documents")

PPC <- fread("C:/Users/Biocomputing/Documents/CSV_DATA/PPC.csv", header = T)
Sham <- fread("C:/Users/Biocomputing/Documents/CSV_DATA/Sham.csv", header = T)
block <- fread("C:/Users/Biocomputing/Documents/CSV_DATA/blocks.csv", header = T)
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

#Executive Vigilance tendency
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

S6_EVACC_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_6_PPC")
for(file in S6_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[Correct=="SPACE",
                 .(accuracy = mean(PracStimulus.ACC)),
  ]
  S6_EVACC_PPC <- rbind(S6_EVACC_PPC, temp)
}

#------------------------------------------------------------------------------#
# Accuracy tendency by sessions
session_bindEVACC_N <- NULL
session_bindEVACC_PPC <- NULL
SR_N <- NULL
SR_PPC <- NULL


#------------------------------------------------------------------------------#
# For Session 1


session_bindEVACC_N <- rbind(session_bindEVACC_N, S1_EVACC_N)
session_bindEVACC_PPC <- rbind(session_bindEVACC_PPC, S1_EVACC_PPC)

#------------------------------------------------------------------------------#
# For Session 2


session_bindEVACC_N <- rbind(session_bindEVACC_N, S2_EVACC_N)
session_bindEVACC_PPC <- rbind(session_bindEVACC_PPC, S2_EVACC_PPC)

#------------------------------------------------------------------------------#
# For Session 3

session_bindEVACC_N <- rbind(session_bindEVACC_N, S3_EVACC_N)
session_bindEVACC_PPC <- rbind(session_bindEVACC_PPC, S3_EVACC_PPC)

#------------------------------------------------------------------------------#
# For Session 4

session_bindEVACC_N <- rbind(session_bindEVACC_N, S4_EVACC_N)
session_bindEVACC_PPC <- rbind(session_bindEVACC_PPC, S4_EVACC_PPC)

#------------------------------------------------------------------------------#
# For Session 5

session_bindEVACC_N <- rbind(session_bindEVACC_N, S5_EVACC_N)
session_bindEVACC_PPC <- rbind(session_bindEVACC_PPC, S5_EVACC_PPC)

#------------------------------------------------------------------------------#
# For Session 6


session_bindEVACC_N <- rbind(session_bindEVACC_N, S6_EVACC_N)
session_bindEVACC_PPC <- rbind(session_bindEVACC_PPC, S6_EVACC_PPC)


# bind using cbind function
session_bindEVACC_N <- cbind(block, session_bindEVACC_N, Part_N)
session_bindEVACC_PPC <- cbind(block, session_bindEVACC_PPC, Part_PPC)

#------------------------------------------------------------------------------#
# ACC tendency between sessions (in graphs)

# SHAM Stimulation
g1 <- ggplot(data = session_bindEVACC_N,
             aes(x = Blocks, y = accuracy, group = Participants_N, color = Participants_N)) + geom_line(size=1)
g1 <- g1 + geom_point(size = 3)
g1 <- g1 + ggtitle("SHAM stimulation accuracy in Executive vigilance task") + theme(plot.title = element_text(hjust=0.5))
plot(g1)

# PPC Stimulation
g2 <- ggplot(data = session_bindEVACC_PPC,
             aes(x = Blocks, y = accuracy, group = Participants_PPC, color = Participants_PPC)) + geom_line(size=1)
g2 <- g2 + geom_point(size = 3)
g2 <- g2 + ggtitle("PPC stimulation accuracy in Executive vigilance task") + theme(plot.title = element_text(hjust=0.5))
plot(g2)
