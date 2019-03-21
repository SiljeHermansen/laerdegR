fig8.4<-function(){
  #Last inn data
  data(kap8)
  kap8 <- kap8

  #Etimer modell
  mod5<-lm(formula=Skepsis~log(TVpol+1),
           data=kap8)

  #Hypotetisk datasett
  data.TV<-data.frame(TVpol=log(seq(0, 7, 0.1)+1))

  #Prediksjoner
  pred.TV=predict(mod5,
                  newdata = data.TV,
                  interval = "confidence")

  #Grafikk for eksponensiell sammenheng av politisk TV-titting
  plot(y = pred.TV[,"fit"],
       x = seq(0,7,0.1),
       type = "l",
       bty = "n",
       ylim = c(3,6),
       xlab = "Politisk TV-titting",
       ylab = "Innvandringsskepsis",
       main = "Effekt av mediaforbruk pa innvandringsskepsis")
  lines(y = pred.TV[,"lwr"],
        x = seq(0,7,0.1),
        lty=2)
  lines(y = pred.TV[,"upr"],
        x = seq(0,7,0.1),
        lty=2)
  }


