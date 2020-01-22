# Cauchy
CauchyData <- load("data/CauchyData.Rda")
save(CauchyData, file = "data/CauchyData.Rda", version = 2)

# CarStop
Pset1CarStopData <- load("data/Pset1CarStopData.Rda")
save(Pset1CarStopData, file = "data/Pset1CarStopData.Rda", version = 2)

# Voter List
`voterList-AgeRace` <- load("data/voterList-AgeRace.Rda")
save(`voterList.subset`, file = "data/voterList-AgeRace.Rda", version = 2)