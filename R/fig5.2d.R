fig5.2d<-function(){
  #Last inn data
  data(kap5, envir = environment())
  kap5 <- kap5

  #Fordeling 1
  plot(density(data$Skepsis,
               na.rm = TRUE),
       xlab = "Innvandringsskepsis",
       ylab = "Sannsynlighet",
       main = "TETTHETSGRAFIKK \nover innvandringsskepsis",
       bty = "n",
       sub = "(d)"
  )

  #Legg til fordeling 2
  lines(density(data$KultSkepsis, na.rm = T), lty=2)

  #Legg til forklarende tekst
  legend("topright",
         lty = c(1,2),
         legend = c("Okonomiske", "Kulturelle"),
         title = "Argumenter mot innvandring",
         bty = "n")
}
