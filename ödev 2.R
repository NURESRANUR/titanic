install.packages('titanic')
install.packages('dplyr')
install.packages('gglpot2')

library(titanic)
library(dbplyr)
library(gglplot2)
#titanic veri setini temel istatistik analizler yapılmıştır
data(titanic_train)
df<-titanic_train

summary(df)

View(titanic_train)
## yaş ortalaması ile değerlendirilmiştir
mean(df$Age,na.rm=TRUE)
median(df$Age,na.rm=TRUE)
hist(df$Age)
##fare değişkenin ortalaması ve medyan incelenmiştir
mean(df$Fare,na.rm=TRUE)
median(df$Fare,na.rm=TRUE)
hist(df$Fare)
## verideki eksik değerler tespit edilmiştir
colSums(is.na(df))
df_clean<-na.omit(df)
#tabloda bilet ücretlerinin dağılımı görsel olarak tanılnamıştır.
boxplot(df$Fare,
        main='Fare Boxplot',
col='lightblue')
##cinsiyet değişkeni tablo ve grafiklerle incelenmiştir
table(df$Sex)
barplot(table(df$Sex),
        main='Cinsiyet Dağılımı',
        col=c('pink','lightblue'))
        
        