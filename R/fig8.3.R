<<<<<<< HEAD
fig8.3<-function(){
  #Last inn data
  data(kap8, envir = environment())
  kap8 <- kap8

  #Etimer modell
  mod4<-lm(formula=Skepsis~Alder+Alder2,
           data=kap8)

  #Hypotetisk datasett
  data.alder<-data.frame(Alder=15:105,
                         Alder2=c(15:105)*c(15:105))

  #Prediksjoner
  pred.ald=predict(mod4,
                   newdata = data.alder,
                   interval = "confidence")

  #Grafikk for kurvilinear sammenheng i aldersgruppen 15 til 105 ar
  plot(y = pred.ald[,"fit"],
       x = 15:105,
       type = "l",
       bty = "n",
       ylim = c(0,10),
       xlab = "Alder",
       ylab = "Skepsis",
       main = "Effekten av alder pa innvandringsskepsis")
  lines(y = pred.ald[,"lwr"],
        x = 15:105,
        lty=2)
  lines(y = pred.ald[,"upr"],
        x = 15:105,
        lty=2)
  }


=======
fig8.3<-function(){
  #Last inn data
  data(kap8, envir = environment())
  kap8 <- kap8

  #Etimer modell
  mod4<-lm(formula=Skepsis~Alder+Alder2,
           data=kap8)

  #Hypotetisk datasett
  data.alder<-data.frame(Alder=15:105,
                         Alder2=c(15:105)*c(15:105))

  #Prediksjoner
  pred.ald=predict(mod4,
                   newdata = data.alder,
                   interval = "confidence")

  #Grafikk for kurvilinear sammenheng i aldersgruppen 15 til 105 ar
  plot(y = pred.ald[,"fit"],
       x = 15:105,
       type = "l",
       bty = "n",
       ylim = c(0,10),
       xlab = "Alder",
       ylab = "Skepsis",
       main = "Effekten av alder pa innvandringsskepsis")
  lines(y = pred.ald[,"lwr"],
        x = 15:105,
        lty=2)
  lines(y = pred.ald[,"upr"],
        x = 15:105,
        lty=2)
  }


>>>>>>> 161c52947fe708930940c19d99b5bb3671c7be41
