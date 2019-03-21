oppg3.2<-function(){
  data(kap3, envir = environment())
  kap3 <- kap3

  plot(x=kap3$hoyre,
       y=kap3$omfordeling,
       xlim = c(0,10),
       ylim = c(0,10),
       xlab = "Hoyreorientering",
       ylab = "Omfordeling",
       main = "Partiers hoyreorientering \nog preferanser for omfordeling")
}
