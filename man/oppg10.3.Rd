\name{oppg10.3}
\alias{oppg10.3}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Oppgave 10.3
}
\description{
Hvordan endrer sannsynligheten for å stemme Fremskrittspartiet seg når inntekt øker fra 5 til 6, mens andre variabler holdes konstant på gjennomsnittet?
}
\usage{
oppg10.3()
}
%- maybe also 'usage' for other objects documented here.
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Silje Synnøve Lyder Hermansen
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
  data(kap10)

  #Partivalg modellert som funksjon av inntekt.
  mod2<-glm(formula=FrP~Skepsis+Utgjevn+Inntekt,
            data=kap10,
            family = binomial(link="logit"))

  #Definere hypotetisk datasett
  nyedata<-data.frame(Skepsis=mean(kap10$Skepsis, na.rm=TRUE),
                      Utgjevn=mean(kap10$Utgjevn, na.rm=TRUE),
                      Inntekt=c(5, 6)
  )

  #Predikere sannsynligheter
  preds<-predict(mod2, nyedata, type = "response")
  preds
}

