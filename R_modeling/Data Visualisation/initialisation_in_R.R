# crée une liste
mylist=list(name="achraf", age=27, grade=c(90,82,66))
mylist$name
# crée une matrice
my_matrix= matrix(1:6,nrow=2,ncol=3,byrow= TRUE) 
my_matrix

#crée une data frame
my_data_frame= data.frame(name=c("alice", "achraf","martina"), age=c(25, 54, 75))
my_data_frame
#création du vecteur 
data_vector=c(10, 25, 15,36,8)
mean(data_vector)


square=data_vector[1]
square


my_data_frame$gendre=c("male", "male", "female")

my_data_frame
subset(my_data_frame, age>30 & gender =='male')

#ploter les data's

