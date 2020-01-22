# Cauchy
CauchyData <- load("data-raw/CauchyData.Rda")
save(CauchyData, file = "data/CauchyData.Rda", version = 2)

# CarStop
Pset1CarStopData <- load("data-raw/Pset1CarStopData.Rda")
save(Pset1CarStopData, file = "data/Pset1CarStopData.Rda", version = 2)

# Voter List
`voterList-AgeRace` <- load("data-raw/voterList-AgeRace.Rda")
save(`voterList.subset`, file = "data/voterList-AgeRace.Rda", version = 2)