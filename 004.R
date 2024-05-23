#MATRIZES

#Construindo matrizes

matriz_1 <- matrix(1:10) # função padrão

matriz_1

matriz_2 <- matrix(data = 1:10, nrow = 5, ncol = 2)  # Estabelecendo linhas e colunas
                                                     # data(dados) nrow(linhas) ncol(colunas)
matriz_2

matriz_3 <- matrix(data = 1:10, nrow = 5, ncol = 2, byrow = TRUE) # Organização por linhas
                                                                  # byrow(organiza por linhas)
matriz_3


# criando matrizes a partir de vetores utilizando rbind() e cbind()

#vetores são listas

vetor_1 <- c(1, 3, 5, 7)    # criando vetor_1 

vetor_2 <- c(9, 11, 13, 15) # criando vetor_2

matriz_4 <- rbind(vetor_1, vetor_2) # juntando vetores com linhas
                                    # rbind(combine por linhas)
matriz_4

matriz_5 <- cbind(vetor_1, vetor_2) # juntando vetores com colunas
                                    # cbind(combine por colunas)
matriz_5

matriz_6 <- as.matrix(vetor_1) # transformando um vetor em matriz
                               # as.matrix(conversão de elemento para matriz)
matriz_6

#manipulação de elementos
#Altera elemento

matriz_2[1,2]<-100 #substitui um elemento: Ex: linha 1 e coluna 2 recebe 100
       #[1,2] é o índice de um elemento
matriz_2

matriz_2[matriz_2>8]<-0 #troca diversos elementos sob uma condição
       #todo elemento maior que 8 receba 0
matriz_2


#OPERAÇÕES ENTRE MATRIZES

#soma entre matrizes

matriz_2 + matriz_3

#subtração

matriz_2 - matriz_3

#Multpicação por constante(k) ou escalar

5*matriz_2

#ou

#k<-5
#k*matriz_2

#Multiplicação entre matrizes
#n de colunas da primeira = n de linhas da segunda

matriz_2 %*% matriz_4 #%*% -> multiplicação

#transpor matriz - linha vira coluna

matriz_2
t(matriz_2)

#determinante() - apenas matriz quadrada

matriz_7 <- matrix(data = 1:9, nrow = 3, ncol = 3)

matriz_7

det(matriz_7)

# dimensao da matriz

dim(matriz_7)

# num de colunas

ncol(matriz_7)

# num de linhas

nrow(matriz_7)

# diagonal

diag(matriz_7)

#manipulando a diagonal

diag(matriz_7)<-0 #insere ZERO na diagonal da matriz

#Juntando matrizes

# unindo matrizes pelas linhas
# coloca uma matriz embaixo da outra

matriz_2
matriz_3
rbind(matriz_2, matriz_3)

# unindo matrizes pelas colunas
#coloca uma do lado da outra

matriz_2
matriz_3
cbind(matriz_2, matriz_3)
