fig5.2b<-function(){
  #Last inn data
  data(kap5, envir = environment())
  kap5 <- kap5

  plot(density(kap5$Skepsis,
               na.rm = TRUE),
       xlab = "Innvandringsskepsis",
       ylab = "Sannsynlighet",
       main = "TETTHETSGRAFIKK \nover innvandringsskepsis",
       col = "gray",
       bty = "n",
       sub = "(b)"
  )
}
