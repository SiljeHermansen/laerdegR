\name{fig5.5}
\alias{fig5.5}

\title{
Figur 5.5
}
\description{
Replikasjonskode for søylediagram med flere kategoriske variabler side-om-side.
}
\usage{
fig5.5()
}

\author{Silje Synnove Lyder Hermansen}

\examples{
  #Last inn data
  data(kap5)

  #Regn ut gjennomsnittlig holdning per parti
  holdning<-tapply(X=kap5$Skepsis,
                   INDEX=kap5$Parti,
                   FUN=mean,
                   na.rm=TRUE)

  #Tegn soylediagram med sorterte verdier
  barplot(sort(holdning),
          cex.names = 0.8,
          main = "SOYLEDIAGRAM\n Innvandringsskepsis blant ulike velgergrupper",
          ylim = c(0,10))
}
