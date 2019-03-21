\name{fig8.4}
\alias{fig8.4}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Figur 8.4
}
\description{
Replikasjonskode for grafikk 8.4. Eksponensiell effekt.
}
\usage{
fig8.4()
fig8.4
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
  data(kap8)

  #Etimer modell
  mod5<-lm(formula=Skepsis~log(TVpol+1),
           data=kap8)

  #Hypotetisk datasett
  data.TV<-data.frame(TVpol=log(seq(0, 7, 0.1)+1))

  #Prediksjoner
  pred.TV=predict(mod5,
                  newdata = data.TV,
                  interval = "confidence")

  #Grafikk for eksponensiell sammenheng av politisk TV-titting
  plot(y = pred.TV[,"fit"],
       x = seq(0,7,0.1),
       type = "l",
       bty = "n",
       ylim = c(3,6),
       xlab = "Politisk TV-titting",
       ylab = "Innvandringsskepsis",
       main = "Effekt av mediaforbruk på innvandringsskepsis")
  lines(y = pred.TV[,"lwr"],
        x = seq(0,7,0.1),
        lty=2)
  lines(y = pred.TV[,"upr"],
        x = seq(0,7,0.1),
        lty=2)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
