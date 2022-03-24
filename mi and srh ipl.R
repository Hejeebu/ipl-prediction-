library(readr)
library(neuralnet)
data=read_csv("C:/Users/Srirama/Downloads/Deep Learning Internal Test -1/Set5- Q1.csv")
names(data)
attach(data)
data[] <- data.matrix(data)
str(data)
scaleddata<-scale(bank)
norm = function(x){
  return((x-min(x))/max(x)-min(x))
}
maxmindata = as.data.frame(lapply(data,normalize
))
train1 = maxmindata[1:150,]
test1 = maxmindata[151:200,]
names(data)

n = names(train1)
n
f= as.formula(paste("matchscore~",paste(n[!n%in%"matchscore"],collapse = "+")))
data
nn = neuralnet(f, data = train1,rep=5,hidden = c(2,1),threshold = 0.01)
nn$result.matrix
plot(nn)






