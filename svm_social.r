install.packages("e1701")
library(e1071)
install.packages("caret")
library(caret)

social <- read.csv("C:\\Users\\Usuário\\Desktop\\social.csv")
400*0.75
#pacotes importantes
#important libraries
social$Purchased <- as.factor(social$Purchased)
indice<-createDataPartition(social[["Purchased"]],list=FALSE,p=0.70)
treino<-social[indice,]
teste <-social[-indice,]

mod1 <- svm(Purchased~Age+EstimatedSalary,kernel="linear",data=treino)

pred <- predict(mod1,newdata = teste)

ver<-cbind(teste,pred)#creating a dataset with test and predicted values
ver#dataset

cm <- confusionMatrix(pred,factor(teste[["Purchased"]]))
cm
