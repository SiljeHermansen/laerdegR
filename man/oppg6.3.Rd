\name{oppg6.3}
\alias{oppg6.3}
\title{
Oppgave 6.3
}
\description{
Bruk hvis/hvis-ikke funksjonen for � omkode \code{Utdanning} i to kategorier: "lav" og "h�y".
}
\usage{
oppg6.3()
oppg6.3
}

\author{
Silje Synn�ve Lyder Hermansen
}

\examples{
  #Last inn data
  data(kap6)

  #Opprett vektor:
  ifelse(kap6$Utdanning<15, "lav", "hoy")


}


