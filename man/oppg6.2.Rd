\name{oppg6.2}
\alias{oppg6.2}
\title{
Oppgave 6.2
}
\description{
Opprett en vektor best�ende av b�de tall og bokstaver:

\code{variabel<-c("Telle", "regne", "lese", "skrive", "8000")}

Bruk \code{grep()}-funksjonen for � identifisere alle observasjoner som inneholder 1) tall, 2) bokstaver, 3) store bokstaver, 4) bokstaven ``s'' og 5) bokstaven ``s'' p� begynnelsen av variabelverdien.
}
\usage{
oppg6.2()
oppg6.2
}

\author{
Silje Synn�ve Lyder Hermansen
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

