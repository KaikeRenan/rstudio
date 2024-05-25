g_l1<-c(1,1,1,0)
g_l2<-c(0,1,1,0)
g_l3<-c(0,0,0,1)

matriz_G<-rbind(g_l1,g_l2,g_l3)

matriz_Gt<-t(matriz_G)

matriz_Gt

s<-matriz_G%*%matriz_Gt

s

c<-matriz_Gt%*%matriz_G

c

