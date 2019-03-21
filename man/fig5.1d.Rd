\name{fig5.1d}
\alias{fig5.1d}

\title{
Figur 5.1d
}
\description{
Replikasjonskode for kakediagram.
}
\usage{
fig5.1d()
}

\author{
Silje Synnøve Lyder Hermansen
}

\examples{
 #Last inn data
  data(kap5)

  #Lag kakediagram

  pie(table(kap5$Parti),                        #Frekvenstabell for partivalg
      col = rainbow(11),                        #Rainbow() lager her 11 farger for de 11 kategoriene
      cex = 0.7,                                #Skriften er 70 \% av standard storrelse
      radius = 1,                               #Kakeradiusen er maksimalt stor
      main = "Respondentenes partivalg i 2013", #Tittel
      sub = "(d)")                              #Undertittel

}
