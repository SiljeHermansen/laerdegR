\name{fig5.1b}
\alias{fig5.1b}

\title{
Figur 5.1b
}
\description{
Replikasjonskode for kakediagram.
}
\usage{
fig5.1b()
}

\author{
Silje Synnøve Lyder Hermansen
}

\examples{
 #Last inn data
  data(kap5)

  #Lag kakediagram
  barplot(table(kap5$Parti),
      col = rainbow(11),
      cex.names = 0.8,
      main = "SOYLEDIAGRAM \nmed respondentenes partivalg i 2013",
      sub = "(b)")

}

