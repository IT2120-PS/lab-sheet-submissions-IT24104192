setwd("C:\\Users\\IT24104192\\Desktop\\IT24104192")
getwd()
data<-read.table("Exercise.txt",header=TRUE)
fix(data)
attach(data)

#Q1
popmn<-mean(Weight.kg.)
popmn

popsd<-sd(Weight.kg.)
popsd

#Q2
samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
}

colnames(samples)=n

s.mean<-apply(samples,2,mean)
s.mean

s.sd<-apply(samples,2,sd)
s.sd

#Q3
mean_of_sample_means<-mean(s.mean)
mean_of_sample_means

sd_of_sample_means<-sd(s.sd)
mean_of_sample_means