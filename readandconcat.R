
setwd("C:/Users/Bryan/Desktop")

#We're going to install the package SAScii to use the SAS input instructions to read the .dat files.
install.packages('SAScii') 
library('SAScii')
sasinstructions <- readChar('familyxx.sas', file.info('familyxx.sas')$size) #This is where the .sas input instructions are
data <- read.SAScii( 'familyxx.dat', 'familyxx.sas' , beginline = 1)	#This reads the file to a variable named 'data'
object.size(data) #Returns how large the object is (in bytes) - just to get a sense of whether we'll have enough memory to do everything in the nested loops below.

#For tomorrow:
#Write a loop that iterates through all the files in a directory, and their corresponding .sas input files
#Each iteration, read the file as 'filename', write data to 'filename.csv', and then rm().

#We might be able to merge using 'HHX' - household number.
#In that case, we want to scrape the data into different folders for each year, loop through all the folders, and join all the files in each of the folders.

dattor <- function(fname, assign = T){ #This function will take a filename, and return a R object
  year<-unlist(strsplit(fname,"/"))[1]
  filename<-unlist(strsplit(fname,"/"))[2]
  sasinst <- readChar(paste(fname, '.sas',sep=''), file.info(paste(fname, '.sas',sep=''))$size) #This is where the .sas input instructions are
  rdata <- read.SAScii(paste(fname,'.dat',sep=''), paste(fname,'.sas',sep=''), beginline = 1)  #This reads the file to a variable named 'data'
  if (assign == T){
    assign(filename, rdata, envir = .GlobalEnv)
  }
  write.csv(get(filename),paste0(year,"/",filename,".csv"),row.names=F)
  return(rdata)
}

yearsofdata = 1997:2014 #range of years we want to do this for
yearsofdata = 2013

for (i in yearsofdata){ #for all the years in that range
  datasets <- list.files(path=toString(i), pattern="*.dat", full.names=T, recursive=FALSE) #what are the files in that directory
  datasets <- sub("^([^.]*).*", "\\1", datasets) #removes the .dat extension
  lapply(datasets, dattor) #loops through the list of files and applies the functio 'dattor', which we have above
}

#RANDOM CRAP BELOW

#for all the names in 'datasets',
#assign to a dataframe named 'dataset[i]', the corresponding processed dataframe

#Is there a programmatic way to merge all the datasets?
concatteddata <- merge(x, y, by.x = "HHX", by.y = "HHX")


