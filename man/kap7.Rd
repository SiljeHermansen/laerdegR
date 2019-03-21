\name{kap7}
\alias{kap7}
\docType{data}
\title{
Datasett for kapittel 7
}
\description{
Datasett med norske respondenter fra 2014. Dataene er tilrettelagte fra European Social Survey's 7. runde. ESS-variabler er indikert i parantes.
}
\usage{data("kap7")}
\format{
  Et datasett med 1436 observasjoner for de følgende 7 variablene.
  \describe{
    \item{\code{Skepsis}}{en tellevariabel. Innvandringsskepsis begrunnet med økonomiske argumenter. Variabelen er en likevektet indeks som løper fra 0 til 10. Indeksen består av tre indikatorer trukket fra ESS:
      \describe{\item{\code{imtcjob}}{Tar innvandrere flest jobber eller skaper de flest jobber?}
                \item{\code{imbleco}}{ Bidrar innvandrere i Norge mest i form av skatter, eller tar de ut mest i form av sosiale goder?}
                \item{\code{imbgeco}}{ Er innvandring negativt eller positivt for Norges økonomi?}
                }
      }
    \item{\code{Prekaritet}}{en binær variabel. Indikerer respondenter som rapporterer at de er arbeidsledige og aktivt leter etter jobb (\code{uempla}), befinner seg i en midlertidig arbeidskontrakt (\code{wrkctra}) eller jobber uten arbeidskontrakt (\code{wrkctra).}}
    \item{\code{SubjektivInntekt}}{Variabelen inneholder fire kategorier avhengig av om respondenten opplever at han "lever komfortabelt" (3), "håndterer" (2), "opplever vanskeligheter" (1) eller "opplever store vanskeligheter" (0) med å leve på sin nåværende inntekt. Variabelen er trukket fra ESS' variabel \code{hincfel}.}
    \item{\code{Utdanning}}{en tellevariabel}
    \item{\code{Innvandrer}}{en binær variabel. Indikerer respondenter hvis mor (\code{mocntr}) og/eller far er født utenfor Norge (\code{facntr}).}
    \item{\code{TV}}{en tellevariabel. TV-titting per dag på en skala fra 0 til 7. Spørsmålet er som følger: "I gjennomsnitt, hvor mange timer ser du på TV i løpet av en ukedag?"
         \describe{\item{\code{0}}{Ingen tid}
                  \item{\code{1}}{ Mindre enn en halvtime.}
                  \item{\code{2}}{ 0.5 til 1 time}
                  \item{\code{3}}{ 1 til 1.5 timer}
                  \item{\code{4}}{ 1.5 til 2 timer}
                  \item{\code{5}}{ 2 til 2.5 timer}
                  \item{\code{6}}{ 2.5 til 3 timer}
                  \item{\code{7}}{ Mer enn 3 timer}
                    }
}

    \item{\code{TVpol}}{en tellevariabel. TV-titting med politisk innhold per dag på en skala fra 0 til 7. Spørsmålet er som følger: "I gjennomsnitt, hvor mange timer ser du på nyheter, aktualitetsprogrammer eller politiske sendinger  i løpet av en ukedag?"
         \describe{\item{\code{0}}{Ingen tid}
                  \item{\code{1}}{ Mindre enn en halvtime.}
                  \item{\code{2}}{ 0.5 til 1 time}
                  \item{\code{3}}{ 1 til 1.5 timer}
                  \item{\code{4}}{ 1.5 til 2 timer}
                  \item{\code{5}}{ 2 til 2.5 timer}
                  \item{\code{6}}{ 2.5 til 3 timer}
                  \item{\code{7}}{ Mer enn 3 timer}
                    }
}
}
}
\source{
ESS Round 7: European Social Survey Round 7 Data (2014). Data file edition 2.1. NSD - Norwegian Centre for Research Data, Norway - Data Archive and distributor of ESS data for ESS ERIC.

Tilgjengelig på: \url{http://www.europeansocialsurvey.org/data/download.html?r=7}
}

\examples{
data(kap7)
%## maybe str(kap7) ; plot(kap7) ...
}
\keyword{datasets}
