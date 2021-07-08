# See executive vigilance task response time in session period

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
  temp <- (temp)[Correct=="SPACE",
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
  temp <- (temp)[Correct=="SPACE",
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
  temp <- (temp)[Correct=="SPACE",
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
  temp <- (temp)[Correct=="SPACE",
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
  temp <- (temp)[Correct=="SPACE",
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
  temp <- (temp)[Correct=="SPACE",
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
  temp <- (temp)[Correct=="SPACE",
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
  temp <- (temp)[Correct=="SPACE",
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
  temp <- (temp)[Correct=="SPACE",
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
  temp <- (temp)[Correct=="SPACE",
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
  temp <- (temp)[Correct=="SPACE",
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
  temp <- (temp)[Correct=="SPACE",
                 .(mean_by_one_file = mean(PracStimulus.RT)),
                 by = Trial]
  S6_EVRT_PPC <- rbind(S6_EVRT_PPC, temp)
}
EVS_RT <- rbind(EVS_RT, S6_EVRT_PPC)
EVS_RT_PPC <- rbind(EVS_RT_PPC, S6_EVRT_PPC)
#------------------------------------------------------------------------------#
# Accuracy tendency by sessions
session_bindEVRT_N <- NULL
session_bindEVRT_PPC <- NULL
S1_EVRT_N <- S1_EVRT_N[,
                       .(mean_RT = mean(mean_by_one_file)),
]
S1_EVRT_PCC <- S1_EVRT_PPC[,
                           .(mean_RT = mean(mean_by_one_file)),
]
session_bindEVRT_N <- rbind(session_bindEVRT_N, S1_EVRT_N)
session_bindEVRT_PPC <- rbind(session_bindEVRT_PPC, S1_EVRT_PCC)


S2_EVRT_N <- S2_EVRT_N[,
                       .(mean_RT = mean(mean_by_one_file)),
]
S2_EVRT_PCC <- S2_EVRT_PPC[,
                           .(mean_RT = mean(mean_by_one_file)),
]
session_bindEVRT_N <- rbind(session_bindEVRT_N, S2_EVRT_N)
session_bindEVRT_PPC <- rbind(session_bindEVRT_PPC, S2_EVRT_PCC)


S3_EVRT_N <- S3_EVRT_N[,
                       .(mean_RT = mean(mean_by_one_file)),
]
S3_EVRT_PCC <- S3_EVRT_PPC[,
                           .(mean_RT = mean(mean_by_one_file)),
]
session_bindEVRT_N <- rbind(session_bindEVRT_N, S3_EVRT_N)
session_bindEVRT_PPC <- rbind(session_bindEVRT_PPC, S3_EVRT_PCC)


S4_EVRT_N <- S4_EVRT_N[,
                       .(mean_RT = mean(mean_by_one_file)),
]
S4_EVRT_PCC <- S4_EVRT_PPC[,
                           .(mean_RT = mean(mean_by_one_file)),
]
session_bindEVRT_N <- rbind(session_bindEVRT_N, S4_EVRT_N)
session_bindEVRT_PPC <- rbind(session_bindEVRT_PPC, S4_EVRT_PCC)


S5_EVRT_N <- S5_EVRT_N[,
                       .(mean_RT = mean(mean_by_one_file)),
]
S5_EVRT_PCC <- S5_EVRT_PPC[,
                           .(mean_RT = mean(mean_by_one_file)),
]
session_bindEVRT_N <- rbind(session_bindEVRT_N, S5_EVRT_N)
session_bindEVRT_PPC <- rbind(session_bindEVRT_PPC, S5_EVRT_PCC)


S6_EVRT_N <- S6_EVRT_N[,
                       .(mean_RT = mean(mean_by_one_file)),
]
S6_EVRT_PCC <- S6_EVRT_PPC[,
                           .(mean_RT = mean(mean_by_one_file)),
]
session_bindEVRT_N <- rbind(session_bindEVRT_N, S6_EVRT_N)
session_bindEVRT_PPC <- rbind(session_bindEVRT_PPC, S6_EVRT_PCC)