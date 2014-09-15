# example.R
# (C) Brendan J. Herger
# Analytics Master's Candidate at University of San Francisco
# 13herger@gmail.com
#
# Available under MIT License
# http://opensource.org/licenses/MIT
#
#*********************************


#r_loop example
#*********************************

#create funciton with the loop
r_loop = function(){
  # loop through a set list, and print out each element of the list.  
  
  print("r_loop example")
  list = c("the", "dark", "brown", "fox")
  for (item in list){
    print(item)
  }
  
}


#r_function
#*********************************
r_function= function(value){
  # A description of your function.
  # This is mandatory, and you will thank yourself later
  
  print("r_function")
  return(value**2)
}

#data_frame
#*********************************
r_dataframe = function(list1, list2){
  #an example function with a few data frame operations
  
  # create dataframe
  df = data.frame(list1, list2)
  print(df)
  
  # rename columns
  print(names(df)) #print current column names
  names(df) = c("words", "order") #change 
  print(names(df)) #print current column names
  print(df)
  
  # change data type
  df["order"] = lapply(df["order"], as.numeric)
  df["words"] = lapply(df["words"], as.character)
  print(df)
  
}





#data_frame
#*********************************
r_data_IO = function(filename){
  # a sample function with a few input output methods
  
  dataframe = read.csv(filename)
  
}

#main
#*********************************
# call to the loop function example
# r_loop()

# call to the function example
# squaredValue = r_function(2)
# print(squaredValue)

# call to the dataframe function example
# inputList1 = c("the", "dark", "brown", "fox")
# inputList2 = c(1,2,3,4)
# r_dataframe(inputList1, inputList2)