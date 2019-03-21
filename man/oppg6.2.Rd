\name{oppg6.2}
\alias{oppg6.2}
\title{
Oppgave 6.2
}
\description{
Opprett en vektor bestående av både tall og bokstaver:

\code{variabel<-c("Telle", "regne", "lese", "skrive", "8000")}

Bruk \code{grep()}-funksjonen for å identifisere alle observasjoner som inneholder 1) tall, 2) bokstaver, 3) store bokstaver, 4) bokstaven ``s'' og 5) bokstaven ``s'' på begynnelsen av variabelverdien.
}
\usage{
oppg6.2()
oppg6.2
}

\author{
Silje Synnøve Lyder Hermansen
}
\examples{
  #Last inn data
  data(kap6)

  #Opprett vektor:
  variabel<-c("Telle", "regne", "lese", "skrive", "8000")

  #Identifiser observasjoner med...
    #tall
    grep("\\\d", variabel)

    #bokstaver
    grep("[[:alpha:]]", variabel)

    #store bokstaver
    grep("[[:upper:]]", variabel)

    #bokstaven s
    grep("s", variabel)

    #bokstaven s i begynnelsen
    grep("^s", variabel)


}

