\name{fig9.1}
\alias{fig9.1}

\title{
Figur 9.1
}
\description{
Replikasjonskode for grafikk 9.1.
}
\usage{
fig9.1()
}

\author{
Silje Synnøve Lyder Hermansen
}

\examples{
  #Last inn data
  data(kap9)

  #Estimer modell
  mod<-lm(Skepsis~Inntekt+
                      Alder+Alder2+
                      Prekaritet*Innvandrer,
                    data=kap9,
                    na.action = "na.exclude")
  #Predikerte verdier
  kap9$Prediksjoner<-predict(mod)

  #Sett de grafiske instillingene til to grafikker
  par(mfrow=c(1,2))

  #Histogram
  hist(kap9$Prediksjoner,
       breaks=20,
       xlim = c(0,10),
       col="grey",
       ylab = "Frekvens",
       xlab = "Predikert innvandringsskepsis",
       main = "Histogram over \nPREDIKERTE verdier",
       sub = "(a)")

  #Histogram
  hist(kap9$Skepsis,
       breaks=20,
       xlim = c(0,10),
       col="grey",
       ylab = "Frekvens",
       xlab = "Observert innvandringsskepsis",
       main = "Histogram over \nOBSERVERTE verdier",
       sub = "(b)")

  #Tilbakestill de grafiske instillingene
  par(mfrow=c(1,1))

}
