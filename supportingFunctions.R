

# function that converts all files in a directory
# with space- or tab- delimited (.txt) to csv files
csvConvert <- function(directory="."){
   files <- list.files(path=directory,pattern="*.txt")
   for (fileIndex in 1:length(files)){
      temp <- read.table(files[fileIndex],sep="",header=TRUE)
      name <- tools::file_path_sans_ext(x=files[fileIndex])
      filename <- paste(name,".csv",sep='')
      write.csv(x=temp,file=filename,row.names=FALSE)
      # double check and see if this works
   }
}

# compile data from all .csv files in a directory to one csv
# has 12 columns, plus country and dayOfYear
# user can choose to remove rows w/ NAs, get warning and include, or no warning
# handleNA allows 3 options for handling NA values: warnAndKeep, keepNA, and removeNA
# also allows to set directory, country and day of year if different from dir/filenames
catCsv <- function (directory = ".", handleNA = "warnAndKeep", country = NULL, dayOfYear = NULL) {
   files <- list.files(path=directory, pattern="*.csv")
   for (fileIndex in 1:length(files)){
      if (fileIndex == 1){
         temp <- read.csv(file=files[fileIndex])
         if(is.null(country)){
            
            country=
         }
         write.csv(x=temp,file="allData.csv",append=FALSE,row.names=FALSE,col.names=TRUE)
      }else{
         temp <- read.csv(file=files[fileIndex])
         write.csv(x=temp,file="allData.csv",append=TRUE,row.names=FALSE,col.names=FALSE)
      }
   }
   # for file in directory
   # add to master file
   # get country from dirname
   # get dayoyear from filename
}



# function summarizing compiled dataset
# for number of screens run, % of screened patients that were infected,
# male vs female, age distribution

dataSummary <- function (<insert summary file here>) {
   #number of screens
   #% of screened that were infected
   #male/female, age distribution
}
