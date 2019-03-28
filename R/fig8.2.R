<<<<<<< HEAD
fig8.2<-function(){
  #Last inn data
  data(kap8, envir = environment())
  kap8 <- kap8

  #Etimer modell
  mod3<-lm(formula=Skepsis~Prekaritet*Innvandrer,
           data=kap8)

  #Hypotetisk datasett
  data.maj<-data.frame(Innvandrer=c(0,0),
                       Prekaritet=c(0,1))

  data.inn<-data.frame(Innvandrer=c(1,1),
                       Prekaritet=c(0,1))

  #Prediksjoner
  pred.maj<-predict(object = mod3,
                    newdata = data.maj,
                    interval = "confidence")

  pred.inn<-predict(object = mod3,
                    newdata = data.inn,
                    interval = "confidence")

  #Sett de grafiske instillingene til to grafikker
  par(mfrow=c(1,2))

  #Grafikk for effekten blant majoritetsbefolkningen
  plot(y = pred.maj[,"fit"],
       x = c(0,1),
       type = "l",
       bty = "n",
       ylim = c(3,7),
       main = "Effekten av prekaritet pa innvandringsskepsis \ni MAJORITETSBEFOLKNINGEN",
       xlab = "Prekaritet",
       ylab = "Skepsis")

  lines(y = pred.maj[,"lwr"],
        x = c(0,1),
        lty=2)

  lines(y = pred.maj[,"upr"],
        x = c(0,1),
        lty=2)

  #Grafikk for effekten blant innvandrere
  plot(y = pred.inn[,"fit"],
       x = c(0,1),
       type = "l",
       bty = "n",
       ylim = c(3,7),
       main = "Effekten av prekaritet pa innvandringsskepsis \nblant INNVANDRERE",
       xlab = "Prekaritet",
       ylab = "Skepsis")

  lines(y = pred.inn[,"lwr"],
        x = c(0,1),
        lty=2)

  lines(y = pred.inn[,"upr"],
        x = c(0,1),
        lty=2)

  #Tilbakestill de grafiske instillingene
  par(mfrow=c(1,1))
  }


=======
fig8.2<-function(){
  #Last inn data
  data(kap8, envir = environment())
  kap8 <- kap8

  #Etimer modell
  mod3<-lm(formula=Skepsis~Prekaritet*Innvandrer,
           data=kap8)

  #Hypotetisk datasett
  data.maj<-data.frame(Innvandrer=c(0,0),
                       Prekaritet=c(0,1))

  data.inn<-data.frame(Innvandrer=c(1,1),
                       Prekaritet=c(0,1))

  #Prediksjoner
  pred.maj<-predict(object = mod3,
                    newdata = data.maj,
                    interval = "confidence")

  pred.inn<-predict(object = mod3,
                    newdata = data.inn,
                    interval = "confidence")

  #Sett de grafiske instillingene til to grafikker
  par(mfrow=c(1,2))

  #Grafikk for effekten blant majoritetsbefolkningen
  plot(y = pred.maj[,"fit"],
       x = c(0,1),
       type = "l",
       bty = "n",
       ylim = c(3,7),
       main = "Effekten av prekaritet pa innvandringsskepsis \ni MAJORITETSBEFOLKNINGEN",
       xlab = "Prekaritet",
       ylab = "Skepsis")

  lines(y = pred.maj[,"lwr"],
        x = c(0,1),
        lty=2)

  lines(y = pred.maj[,"upr"],
        x = c(0,1),
        lty=2)

  #Grafikk for effekten blant innvandrere
  plot(y = pred.inn[,"fit"],
       x = c(0,1),
       type = "l",
       bty = "n",
       ylim = c(3,7),
       main = "Effekten av prekaritet pa innvandringsskepsis \nblant INNVANDRERE",
       xlab = "Prekaritet",
       ylab = "Skepsis")

  lines(y = pred.inn[,"lwr"],
        x = c(0,1),
        lty=2)

  lines(y = pred.inn[,"upr"],
        x = c(0,1),
        lty=2)

  #Tilbakestill de grafiske instillingene
  par(mfrow=c(1,1))
  }


>>>>>>> 161c52947fe708930940c19d99b5bb3671c7be41
