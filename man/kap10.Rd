\name{kap10}
\alias{kap10}
\docType{data}
\title{
Datasett for kapittel 10
}
\description{
Datasett med norske respondenter fra 2014 som hevdet å ha stemt et av regjeringspartiene (Fremskrittspartiet eller Høyre) ved stortingsvalget i 2013. Dataene er tilrettelagte fra European Social Survey's 7. runde. ESS-variabler er indikert i parantes.
}
\usage{data("kap10")}
\format{
  Et datasett med 464 observasjoner for de følgende 6 variablene.
  \describe{
      \item{\code{FrP}}{en binær variabel. Indikerer hvorvidt en respondent hevder å ha stemt for Fremskrittspartiet (FrP=1) eller Høyre (FrP=0) ved forrige stortingsvalg.}
    \item{\code{Skepsis}}{en tellevariabel. VInnvandringsskepsis begrunnet med økonomiske argumenter. Variabelen er en likevektet indeks som løper fra 0 til 10. Indeksen består av tre indikatorer trukket fra ESS:
      \describe{\item{\code{imtcjob}}{Tar innvandrere flest jobber eller skaper de flest jobber?}
                \item{\code{imbleco}}{ Bidrar innvandrere i Norge mest i form av skatter, eller tar de ut mest i form av sosiale goder?}
                \item{\code{imbgeco}}{ Er innvandring negativt eller positivt for Norges økonomi?}
                }
      }
    \item{\code{Utgjevn}}{en tellevariabel. Indikerer i hvor stor grad respondenten sier seg enig i at staten bør utgjevne inntektsforskjeller (\code{gincdif}).}
    \item{\code{Inntekt}}{en tellevariabel. Indikerer i hvilket inntektsdesil respondenten befinner seg (\code{hinctnta}).}
    \item{\code{Utdanning}}{en tellevariabel. Indikerer år med skolegang (\code{eduyrs})}
  }
}

\source{
ESS Round 7: European Social Survey Round 7 Data (2014). Data file edition 2.1. NSD - Norwegian Centre for Research Data, Norway - Data Archive and distributor of ESS data for ESS ERIC.

Tilgjengelig på: \url{http://www.europeansocialsurvey.org/data/download.html?r=7}

}

\examples{
data(kap10)
head(kap10)
}

