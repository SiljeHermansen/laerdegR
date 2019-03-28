oppg7.3<-function(){
  data(kap7, envir = environment())
  kap7 <- kap7

  #Innvandringsskepsis modellert som funksjon av utdanning.
  mod.utd<-lm(formula=Skepsis~Utdanning,
              data=kap7)

  #Konstantleddet#
  summary(mod.utd)$coefficients["(Intercept)",1]

  #Finnes det respondenter med utdanning tilsvarende konstantleddet?
  any(kap7$Utdanning==0)
  sum(kap7$Utdanning==0, na.rm = TRUE)


  #Stigningskoeffisienten#
  summary(mod.utd)$coefficients["Utdanning",1]

  #Standardfeilen til stigningskoeffisienten#
  summary(mod.utd)$coefficients["Utdanning",2]

}
