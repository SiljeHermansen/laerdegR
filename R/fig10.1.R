fig10.1 <- function(){
  #Laste inn data
  data(kap10, envir = environment())
  kap10 <- kap10

  #Estimere modellen
  mod<-glm(FrP~Skepsis+Utjevn,
           data=kap10,
           family = binomial(link = "logit"))

  #Hypotetisk datasett
  nyedata<-data.frame(Skepsis=1:10,
                      Utjevn=3)

  #Prediksjoner
  preds <- predict(mod,
                   se.fit = TRUE,
                   newdata = nyedata)

  lav <- preds$fit-1.96*preds$se.fit
  hoy <- preds$fit+1.96*preds$se.fit

  #Lag grafikk med 6 figurer
  par(mfrow = c(3,2))

  #Fig a
  plot(x = 1:10,
       y = preds$fit,
       type = "l",
       bty = "n",
       xlim = c(1,10),
       ylim = c(-4,2),
       xlab = "Innvandringsskepsis",
       ylab = "Logodds for a stemme FrP (logit(p))",
       main = "Effekten av innvandringsskepsis \npa a velge FrP framfor Hoyre",
       sub = "(a)")
  #Fig b
  plot(x = 1:10,
       y = preds$fit,
       type = "l",
       bty = "n",
       xlim = c(1,10),
       ylim = c(-4,2),
       xlab = "Innvandringsskepsis",
       ylab = "Logodds for a stemme FrP (logit(p))",
       main = "Effekten av innvandringsskepsis \npa a velge FrP framfor Hoyre",
       sub = "(b)")
  lines(lav, lty = 2)
  lines(hoy, lty = 2)


  #Fig c
  plot(exp(preds$fit)/(1+exp(preds$fit)),
       type = "l",
       bty = "n",
       xlim = c(1,10),
       ylim = c(0,1),
       xlab = "Innvandringsskepsis",
       ylab = "Sannsynlighet for a stemme FrP (p)",
       main = "Effekten av innvandringsskepsis \npa a velge FrP framfor Hoyre",
       sub = "(c)")


  #Fig d
  plot(exp(preds$fit)/(1+exp(preds$fit)),
       type = "l",
       bty = "n",
       xlim = c(1,10),
       ylim = c(0,1),
       xlab = "Innvandringsskepsis",
       ylab = "Sannsynlighet for a stemme FrP (p)",
       main = "Effekten av innvandringsskepsis \npa a velge FrP framfor Hoyre",
       sub = "(d)")
  lines(exp(lav)/(1+(exp(lav))), lty = 2)
  lines(exp(hoy)/(1+(exp(hoy))), lty = 2)

  #Fig e
  plot(preds$fit,
       type = "l",
       ylim = c(-4,2),
       yaxt = "n",
       bty = "n",
       xlab = "Innvandringsskepsis",
       ylab = "Sannsynlighet for a stemme FrP (p)",
       main = "Effekten av innvandringsskepsis \npa a velge FrP framfor Hoyre",
       sub = "(e)")
  p<-seq(0, 1, by=0.1)
  axis(side=2,
       labels=p,
       at=log(p/(1-p)),
       las=2)

  #Fig f
  plot(preds$fit,
       type = "l",
       ylim = c(-4,2),
       yaxt = "n",
       bty = "n",
       xlab = "Innvandringsskepsis",
       ylab = "Sannsynlighet for a stemme FrP (p)",
       main = "Effekten av innvandringsskepsis \npa a velge FrP framfor Hoyre",
       sub = "(f)")
  lines(lav, lty = 2)
  lines(hoy, lty = 2)
  axis(side=2,
       labels=p,
       at=log(p/(1-p)),
       las=2)

  #Gjennopprett 1 grafikk = 1 figur
  par(mfrow = c(1,1))

}
