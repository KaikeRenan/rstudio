1+1 #soma
1-1 #subtração
1/1 #divisão
9*2 #multiplicação
sqrt(9) #raiz de 9
5^3 #potencia
100%%9 #resto da divisão
log(10,2) #logaratimo de 10 na base 2
factorial(10) #fatorial de 10

2>3 #maior
2<3 #menor
2>=3 #maior ou igual
2<=3 #menor ou igual
2==3 #recebe
2!=3 #diferente
2>3|3>1 #ou
2>3 & 3>1 #e

#(2x3)+(2!-1)/(2³)
(2*3)+(factorial(2)-1)/(2^3)

#(2/3)+(raiz de 5-1)/(3x5)
(2/3)+(sqrt(5)-1)/(3*5)

#(2>3)e(4>3)
(2>3) & (4>3)

#(2==2)e(3>3)
(2==2) & (3>3)

#(4 é divisivel por 2)e(3 não é maior que 2)
(4%%2==0) & (3<=2)

teste<-1

teste

y<-"SANTOS É O MAIOR DA HISTÓRIA"

a1<-2
a2<-3

(a1+a2)^a1

x<-readline("digite seu nome: ")
z<-as.numeric(readline("Digite sua idade: "))

v1<-c(1,2,3,"a","b")
v1

s1<-seq(1,10,5)
s1

l1<-letters[1:5]
l1

l<-letters[]
l

df<-data.frame(
  "Aluno" = c("Controle do ar condicionado", "Malu", "Kaike"),
  "Curso" = c("CC","AIDS","AIDS"),
  "Semestre" = c(1,2,3))

#View(df)
#df[3,2] linha,coluna
#df$Aluno coluna inteira

#union(A,B) união
#intersect(A,B) intersecção
#setdiff(A,B) diferença

a<-c("a","b","c")
b<-c("b","c","d")

union(a,b)
intersect(a,b)
setdiff(a,b)

#length é igual o # pra cardinalidade

length(intersect(a,b))

a<-c(1,2,3)
min(a)
max(a)

funcao_imc <- function (peso, altura){
  imc<-peso/altura^2
  return(imc)
}

funcao_imc(55, 1.70)

funcao_eq <- function(a, b){
  eq<-(-b)/a
  return(eq)
}

funcao_eq(2,-5)

funcao_eq <- function(a, b){
  eq<-(-b/a)
  return(c("a raiz da equação é:", eq))
}

funcao_eq(2,-5)

funcao_combine_nk <- function(n,k){
  combine_nk <- factorial(n)/factorial(k)*factorial((n-k))
  return(combine_nk)
}

funcao_combine_nk(3,2)

{
  x<-readline("digite sua senha: ")  
  if(x=="computação123"){
    print('Senha correta')
  }
  else{
    print('Senha incorreta')
  }
}

funcao_par_impar<-function(x) {
  if(x%%2==0){
    return("é par")
  }
  else{
    return('é ímpar')
  }
}

funcao_par_impar(5)

tab_verdade<- function(x) {
  if(x=="e"){
    return(data.frame("p"=c("v","v","f","f"),"q"=c("v","f","v","f"),"p_e_q"=c("v","f","f","f")))
  }	
  
  if(x=="ou"){
    return(data.frame("p"=c("v","v","f","f"),"q"=c("v","f","v","f"),"p_ou_q"=c("v","v","v","f")))
  }
}

tab_verdade("e")	

#1
funcao_reajuste_sal<-function(x){
  if(x<=1412){
    reajuste_sal<-(x*0.12)+x
    return(paste0("você receberá 12% de reajuste no salário indo para ",reajuste_sal,' reais'))
  }
  
  if(x<=4236){
    reajuste_sal<-(x*0.05)+x
    return(paste0("você receberá 5% de reajuste no salário indo para ",reajuste_sal,' reais'))
  }
  
  if(x>4236){
    reajuste_sal<-(x*0.02)+x
    return(paste0("você receberá 2% de reajuste no salário indo para ",reajuste_sal,' reais'))
  }
}

funcao_reajuste_sal(7000)

#2
funcao_divisivel <- function(x){
  if(x%%5==0 & x%%3==0){
    return(paste0(x," é divisível por 5 e por 3 ao mesmo tempo"))
  }
  else{
    return('não é divisível por 5 e por 3 ao mesmo tempo')
  }
}

funcao_divisivel(15)

#3
funcao_ordem <- function(x,y,z){
  
  A<-c(x,y,z)
  a1<-min(A)
  a3<-max(A)
  aux<-c(a1,a3)
  a2<-setdiff(A,aux)
  return(paste0("a ordem crescente é ",a1,' ',a2,' ',a3," a ordem descrescente é ",a3,' ',a2,' ',a1))
}

funcao_ordem(1,3,5)

#4
funcao_quadro <- function(a,b,c,d){
  A<-c(a,b,c,d)
  a4<-max(A)
  B<-setdiff(A,a4)
  return(paste0("a soma é ", B[1]+B[2]+B[3]))
}

funcao_quadro(1,2,3,4)



