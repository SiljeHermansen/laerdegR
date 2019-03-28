oppg10.6<-function(){
  data(kap10, envir = environment())
  kap10 <- kap10

  #Partivalg modellert som funksjon av inntekt.
  mod2<-glm(formula=FrP~Skepsis+Utgjevn+Inntekt,
            data=kap10,
            family = binomial(link="logit"))

  #Hypotetisk datasett
  nyedata<-data.frame(Skepsis=mean(kap10$Skepsis, na.rm=T),
                      Utgjevn=mean(kap10$Utgjevn, na.rm=T),
                      Inntekt=c(1:10)
  )

  #Predikerte logodds med standardfeil
  preds<-predict(mod2,
                 nyedata,
                 se.fit = T)

  #Beregn konfidensintervall
  lav=preds$fit-1.96*preds$se.fit
  hoy=preds$fit+1.96*preds$se.fit

  #Plot gjennomsnittlig effekt og reverser omkoding
  plot(x=1:10,
       y=exp(preds$fit)/(1+exp(preds$fit)),
       type="l",
       ylim=c(0,1),
       bty="n",
       main="Effekten av inntekt pa sannsynligheten for a \nvelge FrP framfor Hoyre",
       xlab="Inntekt (i persentiler)",
       ylab="Predikert sannsynlighet for a stemme FrP")

  #Plot konfidensintervall og reverser omkoding
  lines(x=1:10,
        y=exp(lav)/(1+exp(lav)),
        lty=2)

  lines(x=1:10,
        y=exp(hoy)/(1+exp(hoy)),
        lty=2)

}
