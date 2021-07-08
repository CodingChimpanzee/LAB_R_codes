# See phasic alertness task accuracy in session period

#import library
library(data.table)
setwd("C:/Users/Biocomputing/Documents")

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

#write.csv(PAS_ACC_PPC, "C:/Users/Biocomputing/Documents/CSV_DATA/PAS_ACC_PPC.csv")
#PAS_ACC_PPC <- fread("C:/Users/Biocomputing/Documents/CSV_DATA/PAS_ACC_PPC.csv",
#                header = T)

#write.csv(PAS_ACC_N, "C:/Users/Biocomputing/Documents/CSV_DATA/PAS_ACC_N.csv")
#PAS_ACC_N <- fread("C:/Users/Biocomputing/Documents/CSV_DATA/PAS_ACC_N.csv",
#              header = T)

#------------------------------------------------------------------------------#
# Accuracy tendency by sessions
session_bind_N <- NULL
session_bind_PPC <- NULL
S1_PACC_N <- S1_PACC_N[,
                      .(accuracy = sum(accuracy)),
]
S1_PACC_PCC <- S1_PACC_PPC[,
                          .(accuracy = sum(accuracy)),
]
session_bind_N <- rbind(session_bind_N, S1_PACC_N)
session_bind_PPC <- rbind(session_bind_PPC, S1_PACC_PCC)


S2_PACC_N <- S2_PACC_N[,
                       .(accuracy = sum(accuracy)),
]
S2_PACC_PCC <- S2_PACC_PPC[,
                           .(accuracy = sum(accuracy)),
]
session_bind_N <- rbind(session_bind_N, S2_PACC_N)
session_bind_PPC <- rbind(session_bind_PPC, S2_PACC_PCC)


S3_PACC_N <- S3_PACC_N[,
                       .(accuracy = sum(accuracy)),
]
S3_PACC_PCC <- S3_PACC_PPC[,
                           .(accuracy = sum(accuracy)),
]
session_bind_N <- rbind(session_bind_N, S3_PACC_N)
session_bind_PPC <- rbind(session_bind_PPC, S3_PACC_PCC)


S4_PACC_N <- S4_PACC_N[,
                       .(accuracy = sum(accuracy)),
]
S4_PACC_PCC <- S4_PACC_PPC[,
                           .(accuracy = sum(accuracy)),
]
session_bind_N <- rbind(session_bind_N, S4_PACC_N)
session_bind_PPC <- rbind(session_bind_PPC, S4_PACC_PCC)


S5_PACC_N <- S5_PACC_N[,
                       .(accuracy = sum(accuracy)),
]
S5_PACC_PCC <- S5_PACC_PPC[,
                           .(accuracy = sum(accuracy)),
]
session_bind_N <- rbind(session_bind_N, S5_PACC_N)
session_bind_PPC <- rbind(session_bind_PPC, S5_PACC_PCC)


S6_PACC_N <- S6_PACC_N[,
                       .(accuracy = sum(accuracy)),
]
S6_PACC_PCC <- S6_PACC_PPC[,
                           .(accuracy = sum(accuracy)),
]
session_bind_N <- rbind(session_bind_N, S6_PACC_N)
session_bind_PPC <- rbind(session_bind_PPC, S6_PACC_PCC)

