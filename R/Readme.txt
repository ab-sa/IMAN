Parameters in IMAN function:
ProteinLists: list of UniProt accession IDs
identityU: Alignment identity in PairwiseAlignment
score_threshold: STRINGdb score for PPI selection in STRING database
STRINGversion: Check with STRINGdb website (http://string-db.org/) for 
the most up-to-date version.
InputDirectory: By default is getwd(). You can set this parameter
to indicate where the downloaded file from STRING should be
saved. 
Note: This argument is inherited from STRINGdb package and is passed
to functions of STRING package. You can set it to the directory where 
the interaction and mapping data have been downloaded previuosly. 
For more information about how to use this argument please refer to 
manual help for STRINGdb package.


How to run?
Step1. Set the working directory to the place where IMAN.R file is
located. Then run the source("IMAN.R") command to load the IMAN main 
function into the environment of R


Step2. Load the UniProt accession ID's and set the taxonomy ID for 
each organism. 

Step3. Run the following code to merge the protein lists and taxonomy
ID's into an R list object.

Step4. Set the parameters to run the analysis. 
Here is a description of parameters in IMAN. If you need more 
information you can refer to the paper.
identityU: Cut off value for selecting proteins whose alignment score
is greater or equal than identityU
substitutionMatrix: Which scoring matrix to be used for alignment
setting gapOpening and gapExtension for alignment purposes
For NetworkShrinkage, coverage, and BestHit refer to paper
score_threshold: 
STRINGversion: Indicated which version of STRING database should 
program search in for the score of protein-protein interactions.