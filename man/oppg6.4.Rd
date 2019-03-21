\name{oppg6.4}
\alias{oppg6.4}
\title{
Oppgave 6.4
}
\description{
Bruk \code{cut()}-funksjonen for å omkode \code{Utdanning} i tre kategorier: "lav", "middels" og "høy". Skriv flere
}
\usage{
oppg6.4()
oppg6.4
}

\author{
Silje Synnøve Lyder Hermansen
}


\examples{
  #Last inn data
  data(kap6)

  #Opprett vektor:
  cut(kap6$Utdanning, #variabel som skal omkodes
      breaks = c(0,10,20,30), #definer grenseverdier
      labels = c("lav", "middels", "hoy")) #navnet til de nye kategoriene
}
