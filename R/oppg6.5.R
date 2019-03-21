oppg6.5<-function(){
  #Last inn data
  data(kap6)
  kap6 <- kap6

  #Opprett vektor:
  ifelse(kap6$Utdanning<=10, "lav",
         ifelse(kap6$Utdanning<20, "middels",
                ifelse(kap6$Utdanning>=20, "hoy", NA)
         )
  )

}
