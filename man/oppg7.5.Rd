\name{oppg7.5}
\alias{oppg7.5}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Oppgave 7.5
}
\description{
Tolk effekten av utdanning ved hjelp av predikerte verdier. Tegn effekten av utdanning og legg til konfidensintervallet. Opprett et nytt datasett med de predikerte verdiene og bruk \code{predict()}-funksjonen aktivt.
}
\usage{
oppg7.5()
oppg7.5
}


\author{
Silje Synnøve Lyder Hermansen
}

\examples{
  #Last inn data#
  data(kap7)

  #Innvandringsskepsis modellert som funksjon av utdanning.
  mod.utd<-lm(formula=Skepsis~Utdanning,
              data=kap7)

  #Opprett nytt datasett med utdanning innen realistiske rammer
  nyedata<-data.frame(Utdanning=0:30)

  #Prediker verdier med konfidensintervall#
  predikerte<-predict(mod.utd,
                      newdata = nyedata,
                      interval = "confidence")

  #Opprett grafikk med predikert effekt
  plot(x = 0:30,
       y = predikerte[,"fit"],
       type = "l",
       ylim = c(0,10),
       xlab = "Ar med utdanning",
       ylab = "Innvandringsskepsis",
       bty = "n",
       main = "Effekten av utdanning  \n pa innvandringsskepsis")

  #Legg til linjer med konfidensintervallet
  lines(x = 0:30,
        y = predikerte[,"lwr"],
        lty=2)

  lines(x = 0:30,
        y = predikerte[,"upr"],
        lty=2)
}

