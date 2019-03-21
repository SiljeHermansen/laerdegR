fig5.1b<-function(){
  #Last inn data
  data(kap5, envir = environment())
  kap5 <- kap5

  #Lag kakediagram
  barplot(table(kap5$Parti),
          col = rainbow(11),
          cex.names = 0.8,
          main = "SOYLEDIAGRAM \nmed respondentenes partivalg i 2013",
          sub = "(b)")
}
