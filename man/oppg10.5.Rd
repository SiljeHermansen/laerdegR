\name{oppg10.5}
\alias{oppg10.5}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Oppgave 10.5
}
\description{
Gi en grafisk presentasjon av den lineære effekten av inntekt på logoddsen for å stemme Fremskrittspartiet framfor Høyre.
}
\usage{
oppg10.5()
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

  #Hypotetisk datasett
  nyedata<-data.frame(Skepsis=mean(kap10$Skepsis, na.rm=TRUE),
                      Utgjevn=mean(kap10$Utgjevn, na.rm=TRUE),
                      Inntekt=c(1:10)
  )

  #Predikerte logodds med standardfeil
  preds<-predict(mod2,
                 nyedata,
                 se.fit = TRUE)

  #Beregn konfidensintervall
  lav=preds$fit-1.96*preds$se.fit
  hoy=preds$fit+1.96*preds$se.fit

  #Plot gjennomsnittlig effekt
  plot(x=1:10,
       y=preds$fit,
       type="l",
       ylim=c(-2.5,2.5),
       bty="n",
       main="Effekten av inntekt pa logoddsen for a \n velge FrP framfor Hoyre",
       xlab="Inntekt (i persentiler)",
       ylab="Predikert logodds for a stemme FrP")

  #Plot konfidensintervall
  lines(x=1:10,
        y=lav,
        lty=2)

  lines(x=1:10,
        y=hoy,
        lty=2)
}
