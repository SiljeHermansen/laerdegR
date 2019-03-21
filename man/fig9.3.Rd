\name{fig9.3}
\alias{fig9.3}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Figur 9.3
}
\description{
Replikasjonskode for grafikk 9.3.
}
\usage{
fig9.3()
fig9.3
}
%- maybe also 'usage' for other objects documented here.
\arguments{

}
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
  #Last inn data
  data(kap9)

  #Estimer modell
  mod<-lm(Skepsis~Inntekt+
                      Alder+Alder2+
                      Prekaritet*Innvandrer,
                    data=kap9,
                    na.action = "na.exclude")
  #Predikerte verdier
  kap9$Prediksjoner<-predict(mod)

  #Sett de grafiske instillingene til to grafikker
  par(mfrow=c(1,2))

  #Sett opp histogram
  hist(rstandard(mod),
       probability = TRUE,
       col="grey",
       xlab = "Standardiserte residualer",
       main = "Histogram \nmed residualenes fordeling",
       sub = "(a)")

  #Legg til hjelpelinje
  lines(density(rnorm(n=100000,
                      mean = 0,
                      sd = 1)),
        lty=2)

  #Sett opp kvantil-kvantilgrafikk.
  qqnorm(rstandard(mod),
         ylab = "Standardiserte residualer",
         xlab = "En hypotetisk standard normalfordeling",
         main = "Kvantil-kvantilgrafikk\n med residualenes fordeling",
         sub = "(b)")

  #Legg til hjelpelinje
  abline(a=0, b=1, lty=2)

  #Tilbakestill de grafiske instillingene
  par(mfrow=c(1,1))
}
