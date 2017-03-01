# Parameters in IMAN function:
# ProteinLists: list of UniProt accession IDs
# identityU: Alignment identity in PairwiseAlignment
# score_threshold: STRINGdb score for PPI selection in STRING database
# STRINGversion: Check with STRINGdb website (http://string-db.org/) for 
# the most up-to-date version.
# InputDirectory: By default is getwd(). You can set this parameter
# to indicate where the downloaded file from STRING should be
# saved. 
# Note: This argument is inherited from STRINGdb package and is passed
# to functions of STRING package. You can set it to the directory where 
# the interaction and mapping data have been downloaded previuosly. 
# For more information about how to use this argument please refer to 
# manual help for STRINGdb package.


# How to run?
# Step1. Set the working directory to the place where IMAN.R file is
# located. Then run the source("IMAN.R") command to load the IMAN main 
# function into the environment of R

setwd()
source("IMAN.R")


# Step2. Load the UniProt accession ID's and set the taxonomy ID for 
# each organism. 
p = read.table("Human.txt")
ProteinList1 = as.character(p$V1)
p = read.table("Rat.txt")
ProteinList2 = as.character(p$V1)
p = read.table("Celegans.txt")
ProteinList3 = as.character(p$V1)
p = read.table("Fly.txt")
ProteinList4 = as.character(p$V1)
List1_Species_ID = 9606  # taxonomy ID List1 Homo sapiens
List2_Species_ID = 10116 # taxonomy ID List2 Rat
List3_Species_ID = 6239  # taxonomy ID List1 Celegans
List4_Species_ID = 7227  # taxonomy ID List2 Fly


# Step3. Run the following code to merge the protein lists and taxonomy
# ID's into an R list object.
ProteinLists = list(ProteinList1, ProteinList2, ProteinList3, ProteinList4)
Species_IDs  = list(List1_Species_ID, List2_Species_ID,
                    List3_Species_ID, List4_Species_ID)

# Step4. Set the parameters to run the analysis. 
# Here is a description of parameters in IMAN. If you need more 
# information you can refer to the paper.
# identityU: Cut off value for selecting proteins whose alignment score
# is greater or equal than identityU
# substitutionMatrix: Which scoring matrix to be used for alignment
# setting gapOpening and gapExtension for alignment purposes
# For NetworkShrinkage, coverage, and BestHit refer to paper
# score_threshold: 
# STRINGversion: Indicated which version of STRING database should 
# program search in for the score of protein-protein interactions.
identityU = 30
substitutionMatrix = "BLOSUM62"
gapOpening = -8
gapExtension = -8
NetworkShrinkage = FALSE
coverage = 1
BestHit = TRUE
score_threshold = 400    
STRINGversion="10"



#Step5. Run the IMAN function for the parameters
output = IMAN(ProteinLists, Species_IDs,
              identityU, substitutionMatrix, 
              gapOpening, gapExtension, BestHit,
              coverage, NetworkShrinkage,
              score_threshold, STRINGversion,  
              InputDirectory = getwd())

output$IPNEdges
output$IPNNodes
output$Networks
output$Networks[[1]]
output$maps
output$maps[[2]]
output$IPN

################################################################
# Citation Info:
#
#
################################################################