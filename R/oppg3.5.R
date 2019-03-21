oppg3.5<-function(){
  data(kap3, envir = environment())
  kap3 <- kap3

  plot(x=kap3$hoyre,
       y=kap3$omfordeling,
       xlim = c(0,10),
       ylim = c(0,10),
       xlab = "Hoyreorientering",
       ylab = "Omfordeling",
       main = "Partiers hoyreorientering \nog preferanser for omfordeling",
       type = "n", #blankt ark
       bty = "n" #fjerne ramme
  )
  kap3$parti<-as.character(kap3$parti)
  text(x=kap3$hoyre,
       y=kap3$omfordeling,
       labels = c(kap3$parti),
       col = c("pink", "darkblue", "blue", "yellow", "forestgreen", "orange", "red", "green"),
       cex = kap3$viktighet/3)
  legend(x="topleft",
         pch = "V", #Presiser at punktet kan vaere en bokstav (flere bokstaver er ikke mulig)
         col="red",
         legend = c("Politikkomradets \nviktighet\n(storrelse)"),
         bty = "n", #Fjerne rammen rundt tegnforklaringen
         cex = 0.8 #Noe mindre skriftstorrelse
  )
}
