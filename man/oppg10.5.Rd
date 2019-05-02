\name{oppg10.5}
\alias{oppg10.5}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Oppgave 10.5
}
\description{
Gi en grafisk presentasjon av den lineære effekten av inntekt på logoddsen for å stemme Fremskrittspartiet framfor Høyre.
}
\usage{
oppg10.5()
}

\author{
Silje Synnøve Lyder Hermansen
}

\examples{
  #Last inn data
  data(kap10)
  kap10 <- kap10

  #Partivalg modellert som funksjon av inntekt.
  mod2<-glm(formula=FrP~Skepsis+Utjevn+Inntekt,
            data=kap10,
            family = binomial(link="logit"))

  #Hypotetisk datasett
  nyedata<-data.frame(Skepsis=mean(kap10$Skepsis, na.rm=TRUE),
                      Utjevn=mean(kap10$Utjevn, na.rm=TRUE),
                      Inntekt=c(1:10)
  )

  #Predikerte logodds med standardfeil
  preds<-predict(mod2,
                 nyedata,
                 se.fit = TRUE)

  #Beregn konfidensintervall
  lav=preds$fit-1.96*preds$se.fit
  hoy=preds$fit+1.96*preds$se.fit

  #Plot gjennomsnittlig effekt
  plot(x=1:10,
       y=preds$fit,
       type="l",
       ylim=c(-2.5,2.5),
       bty="n",
       main="Effekten av inntekt pa logoddsen for a \n velge FrP framfor Hoyre",
       xlab="Inntekt (i persentiler)",
       ylab="Predikert logodds for a stemme FrP")

  #Plot konfidensintervall
  lines(x=1:10,
        y=lav,
        lty=2)

  lines(x=1:10,
        y=hoy,
        lty=2)
}
