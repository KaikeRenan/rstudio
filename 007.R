# construa as quatro matrizes mtx1, mtx2, mtx3, mtx4. a partir delas, gere a mtx_total ao lado.

v1<-c(1, 1, 1)
v2<-c(2, 2, 2)
v3<-c(3, 3, 3)
mtx1<-rbind(v1,v2,v3)
mtx1

v4<-c(4,4,4)
v5<-c(5,5,5)
v6<-c(6,6,6)
mtx2<-rbind(v4,v5,v6)
mtx2

v7<-c(7,7,7)
v8<-c(8,8,8)
v9<-c(9,9,9)
mtx3<-rbind(v7,v8,v9)
mtx3

v10<-c(10,10,10)
v11<-c(11,11,11)
v12<-c(12,12,12)
mtx4<-rbind(v10,v11,v12)
mtx4

mtx_1_3<-rbind(mtx1, mtx3)
mtx_2_4<-rbind(mtx2, mtx4)
mtx_total<-cbind(mtx_1_3, mtx_2_4)
mtx_total

det(mtx_total)

mtx_total %*% t(mtx_total)

diag(mtx_total)<-0
mtx_total

mtx_total[mtx_total>200]<-1
mtx_total[mtx_total<200]<-0
mtx_total
