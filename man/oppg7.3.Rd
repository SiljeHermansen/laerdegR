\name{oppg7.3}
\alias{oppg7.3}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Oppgave 7.3
}
\description{
Tolk marginaleffektene i modellen fra foregående ved hjelp av tall og ord.

Hvordan kan vi tolke konstantleddet? Har dette en substansiell mening?

Hvordan kan vi tolke stigningskoeffisienten? Hva er usikkerheten i estimatet?
}
\usage{
oppg7.3()
oppg7.3
}

\author{
Silje Synnøve Lyder Hermansen
}
\note{
Konstantleddet predikerer innvandringsskepsis når respondenten ikke har noen utdanning. Konstantleddet gir ikke mye mening, siden det er kun er et fåtall respondenter som ikke har grunnskole.

Stigningskoeffisienten predikerer en nedgang i innvandringsskepsis på for hvert år med utdanning man tar. Standardfeilen er relativt lav i forhold til regresjonskoeffisienten, og signaliserer et statistisk signifikant funn

}


\examples{

  data(kap7)

  #Innvandringsskepsis modellert som funksjon av utdanning.
  mod.utd<-lm(formula=Skepsis~Utdanning,
         data=kap7)

  #Konstantleddet#
  summary(mod.utd)$coefficients["(Intercept)",1]

  #Finnes det respondenter med utdanning tilsvarende konstantleddet?
  any(kap7$Utdanning==0)
  sum(kap7$Utdanning==0, na.rm = TRUE)


  #Stigningskoeffisienten#
  summary(mod.utd)$coefficients["Utdanning",1]

  #Standardfeilen til stigningskoeffisienten#
  summary(mod.utd)$coefficients["Utdanning",2]

}
