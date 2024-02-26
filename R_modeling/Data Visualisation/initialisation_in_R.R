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

ggplot(mtcars , aes(x = mpg,y= hp , color = factor(cyl))) + geom_point()

ggplot(diamonds,aes(x= cut)) + geom_bar()  + facet_wrap("clarity")

ggplot(diamonds , aes (x= carat , y= price , color = cut )) +geom_point() +  geom_smooth(method = "lm") + facet_wrap("clarity")



#install and load necessary package

install.packages("ploty")
library(plotly)

#Load the economics dataset
data("economics")

#create an interactive time series plot
plot<- plot_ly(data=economics, x=~date)


#TEST d'hypotheses: 

set.seed(123)
sample_data <- rnorm(n= 30, mean=10, sd=2)
mean_sample<- mean(sample_data)
sigma_known <- 2
z_stat <- (mean_sample - 10) / (sigma_known / sqrt(30))
p_value <- 2* (1-pnorm(abs(z_stat)))
p_value


#parametric one-sample Hypothesis test-mean (Unknown variance)

t.test(mtcars$mpg, mu=20)

prop.test(table(iris$Species == "setosa"), p=0.3)

data(iris)
t.test(iris$Sepal.Length[iris$Species == "setosa"],
iris$Sepal.Length[iris$Species == "versicolor"], alternative ="two.sided")

## mann-Whitney U test 

# Load the iris dataset 

data(iris)


#Split data into two groups

setosa_lengths <- iris$Sepal.Length[iris$Species=="setosa"]
versicolor_lenghts <- iris$Sepal.[iris$Species == "versicolor"]

#Perform Mann-Whitney U test 

mannwhitney_result <- wilcox.test(setosa_lengths, versicolor_lenghts)


#Print summary

summary(mannwhitney_result)
