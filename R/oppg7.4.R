oppg7.4<-function(){
  data(kap7, envir = environment())
  kap7 <- kap7

  #Innvandringsskepsis modellert som funksjon av utdanning.
  mod.utd<-lm(formula=Skepsis~Utdanning,
              data=kap7)

  #95 prosent konfidensintervall for samtlige regresjonskoeffisienter#
  confint(mod.utd)
}
