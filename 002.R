#1
funcao_indice_jaccard<-function(a,b){
  indice_jaccard<-length(intersect(a,b))/length(union(a,b))
  return(indice_jaccard)
}

funcao_indice_jaccard(a<-c("s1","s2","s3","s4","s5","s6","s7","s8","s9","s10","s11"),b<-c("s1","s2","s3","s4","s8","s9"))

#2
funcao_multiplo_sete<-function(a){
  if(a%%7==0){
  return('é multiplo de 7')
}
else{
  return('nao é multiplo de 7')
}
}

funcao_multiplo_sete(21)

#3 - usei os dados do site: https://abeso.org.br/obesidade-e-sindrome-metabolica/calculadora-imc/
funcao_imc <- function (peso, altura){
  imc<-peso/altura^2
  if(imc>=40.0){
    return('Obesidade grau 3')
  }
  
  if(imc>=35.0){
    return('Obesidade grau 2')
  }
  if(imc>=30.0){
    return('Obesidade grau 1')
  }
  if(imc>=25.0){
    return('Sobrepeso')
  }
  if(imc>=18.6){
    return('Peso normal')
  }
  
  else{
    return('Abaixo do peso')
  }
}
  

funcao_imc(100, 1.70)

#4 
{
  x<-as.numeric(readline("Insira os valores de álcool: "))
  y<-as.numeric(readline("Insira os valores de gasolina: "))
  if(x>y){
    df<-data.frame("álcool"=c(x),"gasolina"=c(y),"compensa mais abastecer com"=c("álcool"))
      return(df)
}
  
  else{
    df<-data.frame( "álcool"=c(x),"gasolina"=c(y),"compensa mais abastecer com"=c("gasolina"))
      return(df)
}
}
