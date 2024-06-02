library(dplyr)
data1= data.frame(Players=c("Ramesh","Suresh","Yadhav","Jadhav","Madhav","Madhav"),
                  Runs=c(1002,1231,2344,1002,2344,2344),
                  Matches=c(76,87,109,89,104,104))
print(data1)
##Filtering the data based on runs
filter(data1,Runs<1500)
##Arranging the data based on the names of the players
arrange(data1,Players)
##displaying a part of the data
select(data1,Players,Runs)
##distinct-column
distinct(data1,Runs,.keep_all = TRUE)
##distinct row
distinct(data1)
##Renaming the column
rename(data1,Names=Players)
##Adding a column by not removing the old ones
mutate(data1,Merits=c(1,2,3,4,5,6))
##Adding a column by removing all the old ones
transmute(data1,Salaries=c(1000000,1000000,1200000,1000000,1200000,1000000))

##Assigning the mutated data to a new data variable
data2=select(data1,Players,Runs)
print(data2)