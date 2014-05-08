setwd("/Users/Yourname/Directory")

stimuli <- read.csv("Stimuli.csv", stringsAsFactors=FALSE, header=FALSE)

cat(c("[[AdvancedFormat]]", "\n", "\n", "[[Block: 1]]", "\n", "\n"), file="Choiceblocks.txt", append=TRUE)

for (i in 1:nrow(stimuli)) {
  cat(c("[[Question:MC:SingleAnswer:Horizontal]]", "\n", paste0("[[ID: Stim ", i, "]]"),
        "\n", stimuli[i, 1], "\n", "\n", "[[AdvancedChoices]]", "\n", "[[Choice: 1]]",
        "\n", stimuli[i, 2], "\n", "[[Choice: 2]]","\n", stimuli[i, 3], "\n", 
        "[[Choice: 3]]","\n", stimuli[i, 4], "\n", "[[Choice: 4]]","\n", stimuli[i, 5], 
        "\n", "\n"), file = "Choiceblocks.txt", append=TRUE)
}

