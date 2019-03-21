oppg3.3<-function(){
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
       labels = c(kap3$parti), #Spesifiser partinavn
       col = c("pink", "darkblue", "blue", "yellow", "forestgreen", "orange", "red", "green")#spesifiser farger
  )
}
