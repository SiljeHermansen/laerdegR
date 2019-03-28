oppg7.2<-function(){
  data(kap7, envir = environment())
  kap7 <- kap7

  #Innvandringsskepsis modellert som funksjon av utdanning.
  mod.utd<-lm(formula=Skepsis~Utdanning,
         data=kap7)

  #Sammendrag av modellen#
  summary(mod.utd)

  #Stigningskoeffisienten er negativ og signifikant
  #F-statistikken er signifikant: Modellen er bedre enn en nullmodell
}
