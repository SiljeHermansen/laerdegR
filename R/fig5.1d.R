fig5.1d<-function(){
  #Last inn data
  data(kap5, envir = environment())
  kap5 <- kap5

  #Lag kakediagram
  pie(table(kap5$Parti),                       #Frekvenstabell for partivalg
      col = rainbow(11),                        #Rainbow-funksjonen lager her 11 farger for de 11 kategoriene
      cex = 0.7,                                #Kategoriskriften er 70 prosent av standard størrelse
      radius = 1,                               #Kakeradiusen er maksimalt stor
      main = "Respondentenes partivalg i 2013", #Tittel
      sub = "(b)")                             #Undertittel
}
