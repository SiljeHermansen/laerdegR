\name{oppg9.1}
\alias{oppg9.1}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Oppgave 9.1
}
\description{
Utvid modellen med variabelen \code{KultSkepsis}. Denne er et m�l p� i hvor stor grad en respondent sier seg enig i at innvandring truer norsk kultur.

Hva skjer med effekten til de andre andre variablene n�r vi legger til kulturell skepsis? Hvorfor? Er det relevant � kontrollere for denne variabelen?
}
\usage{
fig9.1()
}

\author{
Silje Synn�ve Lyder Hermansen
}
\note{
Vi kan ikke sammenlikne regresjonseffektene direkte, men vi ser blant annet at signifikansen til alder forsvinner. Dette kan tyde p� at alder er en felles bakenforliggende variabel for begge typer skepsis. F�rst og fremst ser vi at R2 �ker. For�vrig kan man sp�rre om �rsaksretningen mellom kulturell og �konomisk begrunnet innvandringsskepis. Hvilken kommer f�rst?
}

\examples{
  #Last inn data
  data(kap9)

  #Utvid modell
  mod2<-lm(Skepsis~KultSkepsis+
            Inntekt+
            Alder+Alder2+
            Prekaritet*Innvandrer,
          data=kap9,
          na.action = "na.exclude")

  #Inspiser modell
  summary(mod2)


}
