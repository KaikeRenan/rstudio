#Bibliotecas

install.packages('igraph') #instalando biblioteca
library(igraph) #ativando biblioteca

#Arquivo

corpus<-read.table(file.choose(), #pra escolher arquivo
                   header = TRUE, #intica q tem cabeçalho
                   sep = "\t") #tabulado (separado em colunas)

#Converte Corpus para dataframe

corpus<-as.data.frame(corpus)

#remover vazios/espaços e substituir por NA

corpus[corpus==""]<-NA

#Transformando o arquivo externo em MATRIZ

m<-stack(corpus) #transforma dados que estão em diversas colunas em um dataframe único. "Empilha" dos dados

m

m<-na.omit(m) #omite os valores NA

m

dt<-table(m) #realiza a frequencia de dados e construi a tabela de dados

dt

mtx_inc<-t(dt) #mtx incidencia (tranpondo a matriz dt)

mtx_inc

mtx_sim<- mtx_inc %*% t(mtx_inc) #mtx similaridade(S=GxGt)

diag(mtx_sim)<-0 #Atribui zero a diagonal

mtx_sim

mtx_co<-t(mtx_inc) %*% mtx_inc #mtx co-ocorrencia(C=GtxG)

diag(mtx_co)<-0  #atribui zero a diagonal

mtx_co

#to Graph (criação de grafo)

#Matriz to Graph (matriz para grafo)

g_inc<-graph_from_incidence_matrix(mtx_inc, 
                                   weighted = TRUE, 
                                   mode="out",  
                                   directed = TRUE) #grafo incidencia

g_sim <- graph_from_adjacency_matrix(mtx_sim, 
                                     weighted = TRUE, 
                                     mode = "undirected") #grafo similaridade

g_co<- graph_from_adjacency_matrix(mtx_co, 
                                   weighted = TRUE, 
                                   mode = "undirected") #grafo co-ocorrencia


#plot com Igraph (mostre o grafo)

plot(g_inc, edge.width=E(g_inc)$weight) #Plot mtx inc

plot(g_sim, edge.width=E(g_sim)$weight) #plot mtx sim

plot(g_co, edge.width=E(g_co)$weight) #plot mtx co
