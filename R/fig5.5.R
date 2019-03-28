fig5.5<-function(){
  #Last inn data
  data(kap5, envir = environment())
  kap5 <- kap5

  #Regn ut gjennomsnittlig holdning per parti
  holdning<-tapply(X=kap5$Skepsis,
                   INDEX=kap5$Parti,
                   FUN=mean,
                   na.rm=TRUE)

  #Tegn soylediagram med sorterte verdier
  barplot(sort(holdning),
          cex.names = 0.8,
          main = "SOYLEDIAGRAM\nInnvandringsskepsis blant ulike velgergrupper",
          ylim = c(0,10))
}
