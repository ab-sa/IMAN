IMAN User's Guide
Version 1.0

===================================================
=========== Introduction ==========================
===================================================
IMAN extracts Interlog protein interaction network of given species and proteins.

If you have any problems running IMAN, please do not hesitate to contact s.jahangiri.cs@gmail.com 


===================================================
========= Requirements ============================
===================================================

(1) To run IMAN you need to install EMBOSS needle program.
  - EMBOSS package is available at http://emboss.sourceforge.net/.

(2)We have developed and tested IMAN on 64bit MS Windows. We will provide the Linux version ASAP.

===================================================
========= Files ===================================
===================================================
(1) Config.txt
  - This file contains the user defined parameters. Change the parameters to your desired valuse. 
    The file is very easy to read and self-explanatory.
  

(2) data.txt
  - This file contains your data as a list of uniprot ids for each organism.
  - First line starts with a hashtag(#) followed by species name and the following lines contains protein uniprot ids for that organism.
    Each line contains a single ID.
  - For the second organism simply start another line with a hashtag and species name and input protein uniprot ids similar to above.
  - A test data file is provided.

(3) AliasDB.mv 
  - This file contains Uniprot-StringDB aliases. It is a simple database and you have nothing to do with that. 
    With every update of StringDB this file should be updated from our website.

===================================================
========= Runing IMAN ========================
===================================================
To run the project from the command line, go to the dist folder and
type the following:

java -jar "IMAN.jar" 

===================================================
========= Output Files and Folders ================
===================================================
(1) "alignments" folder
  - This folder contains alignment files that are produced by needle software. We keep them to save time!
    *** Please note that if you change alignment parameres you have to delete this folder.
(2) "sequences" folder
  - This folder contains the protein sequence files that are fetched from UniProt. We keep them so once a protein sequence is fetched it won't be fetched
    in the future experiments! This will save time and internet bandwidth.
(3) "tmp" folder
  - 
(4) "output" folder
  -   
===================================================
========= Output Messages =========================
===================================================
(1) "Protein does not have sequence in Uniprot"
  - This happens when a UniprotKB is changed in uniprot database.
  
===================================================
========= IMPORTANT NOTICE ========================
We cache protein sequences and alignment results to reduce running time of our software. Delete caching folders if necessary.
i.e. :
If you changed your alignment parameters please delete "alignments" folder.
If you changed your input data please "sequences" folder.
===================================================
===================================================
========= Software License ========================
===================================================
The IMAN Software is Copyright 2017 by the Jafari-Lab.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.