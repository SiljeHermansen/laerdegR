\name{oppg7.2}
\alias{oppg7.2}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Oppgave 7.2
}
\description{
Datasettet inneholder en variabel, \code{Utdanning}, som oppgir respondentens år med utdanning. Modellér innvandringsskepsis som en funksjon av utdanning og ta vare på resultatet i et modellobjekt. Lag et sammendrag av modellen ved hjelp av \code{summary()}.

Har utdanning en positiv eller negativ effekt på innvandringsskepsis? Er det sannsynlig at en ny spørreundersøkelse med samme variabler vil gi en modell med tilsvarende effekt?

Vurdér så F-statistikken: Gir modellen en bedre beskrivelse av avhengig variabel enn en modell uten forklaringsvariabler (en nullmodell)?
}
\usage{
oppg7.2()
}

\author{
Silje Synnøve Lyder Hermansen
}
\note{
Stigningskoeffisienten er negativ og signifikant.

F-statistikken er også signifikant: Modellen er bedre enn en nullmodell.
}


\examples{

  #Last inn data#
  data(kap7)

  #Innvandringsskepsis modellert som funksjon av utdanning.
  mod.utd<-lm(formula=Skepsis~Utdanning,
              data=kap7)

  #Sammendrag av modellen#
  summary(mod.utd)
}


