# example.R
# (C) Brendan J. Herger
# Analytics Master's Candidate at University of San Francisco
# 13herger@gmail.com
#
# Available under MIT License
# http://opensource.org/licenses/MIT
#
#*********************************

rm(list = ls())

#data_frame
#*********************************
import_dataframe = function(filename){
  #an example function with a few data frame operations
  
  # create dataframe
  print("")
  print("read in csv")
  df = read.csv(file = filename, sep=",", stringsAsFactors=FALSE)
  
  # subset to the columns of interest
  print("")
  print("subset")
  df = df[ , c("voterbase_id","vf_party", "census_african_american_pct", "vf_county_code")]
  
  # change column names to human readable
  print("")
  print("rename columns")
  print(names(df))
  names(df) = c("voterbase_id", "vf_party", "aa_perc", "vf_county_code")
  print(names(df))
  
  #change datatypes
  print("")
  print("change datatypes")
  print(sapply(df, class))
  df["voterbase_id"] = lapply(df["voterbase_id"], as.character)
  df["vf_party"] = lapply(df["vf_party"], as.factor)
  df["aa_perc"] = lapply(df["aa_perc"], as.numeric)
  df["vf_county_code"] = lapply(df["vf_county_code"], as.factor)
  print(sapply(df, class))
  
  print(df)
  
}

#main
#*********************************

#create dataframe 
cleaned_df = import_dataframe("Florida+Voter+File+50k+csv.csv")

#find mean aa_perc by vf_party 
aggregated_df = aggregate(aa_perc ~ vf_party, data = cleaned_df,  FUN=mean, na.rm=TRUE)
print(aggregated_df)


