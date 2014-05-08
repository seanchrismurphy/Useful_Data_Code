setwd("/Users/Yourname/Directory")

stimuli <- read.csv("Stimuli.csv", stringsAsFactors=FALSE, header=FALSE)

cat(c("[[AdvancedFormat]]", "\n", "\n"), file="Choiceblocks.txt", append=TRUE)

for (i in 1:nrow(stimuli)) {
  cat(c(paste0("[[Block:", i, "]]"), "\n", "[[Question:MC:SingleAnswer:Horizontal]]", 
        "\n", stimuli[i, 1], "\n", "\n", "[[AdvancedChoices]]", "\n", "[[Choice: 1]]",
        "\n", "Same", "\n", "[[Choice: 2]]","\n", "Different", "\n", "\n"), 
        file = "Choiceblocks.txt", append=TRUE)
}

