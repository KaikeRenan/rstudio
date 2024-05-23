funcao_conjuntos<-function(a,b,c){
  tamanhoA<-length(a)
  tamanhoB<-length(b)
  tamanhoC<-length(c)
  jc1<-length(intersect(a,b))/length(union(a,b))
  jc2<-length(intersect(a,c))/length(union(a,c))
  jc3<-length(intersect(b,c))/length(union(b,c))
  cos1<-length(intersect(a,b))/sqrt((length(a)*length(b)))
  cos2<-length(intersect(a,c))/sqrt((length(a)*length(c)))
  cos3<-length(intersect(b,c))/sqrt((length(b)*length(c)))
  sd1<-2*length(intersect(a,b))/(length(a)+length(b))
  sd2<-2*length(intersect(a,c))/(length(a)+length(c))
  sd3<-2*length(intersect(b,c))/(length(b)+length(c))
  df<-data.frame(
    "Conjuntos" = c('A','B','C'),
    "Tamanho" = c(tamanhoA,tamanhoB,tamanhoC),
    "Intersecções" = c(length(intersect(a,b)),length(intersect(a,c)),length(intersect(b,c))),    
    "Jaccard" = c(jc1,jc2,jc3),
    "Salton" = c(cos1,cos2,cos3),
    "Soren-Dice" = c(sd1,sd2,sd3))
  return(df)
}

a<-c("s1","s2","s3","s4","s5","s6","s7","s8","s9","s10","s11")
b<-c("s1","s2","s3","s4","s8","s9")
c<-c("s4","s5","s7","s8","s9","s10","s11","s12","s13","s14")

funcao_conjuntos(a,b,c)
