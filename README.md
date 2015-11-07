# wrangling
## Code for reading and concatenating our data

Install package "SAScii" which has the function read.SAScii will take a .dat file which contains data, and a .sas file which contains instructions for reading it.

The NHIS data for all the years contain .dat files as well as corresponding instructions for SPSS, STATA, and SAS. The .dat,.sas, .spss., and .stata files share the same name.

The function 'dattor' takes a string name of the .sas file and .dat file (e.g., "familyxx"), and writes the data to a .csv file of the same name. 'dattor' takes a second argument "assign" (TRUE or FALSE) that defaults to TRUE, and writes the data to an R dataframe of the same name if TRUE.

## Misc

There is a short shell script that will unzip all the files in the directory and change the filenames to lowercase.
