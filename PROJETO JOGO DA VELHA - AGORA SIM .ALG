  Algoritmo           "PROJETO JOGO DA VELHA"
// Disciplina : [Conceitos de Algorítmos]
// Professor : Gilberto
// Nome da 'empresa/grupo de desenvolvimento' : AVANT-GARD PROJECT
// Integrantes do grupo: Jullia, Andreia, Maria Clara e Adriano
Var
menu: inteiro
a1,a2,a3,b1,b2,b3,c1,c2,c3: caracter
jogX, jogO, turno, posicao, controle1, controle2, rodada: caracter
cont_jog, placarX, placarO: inteiro
renomear, renomearXO: caracter
nome12, maiorvalor, velha, partidas, partidaX, partidaO: inteiro
wingeral, sair: caracter
taxadevitorias, partidasjog, taxavelhas: real

Inicio

rodada <- "S"
      escreval("BEM VINDO AO JOGO DA VELHA!!")
      escreval

   enquanto (rodada = "S") faca//ESTRUTURA PARA REPETIR O JOGO

      a1 <- "A"
      a2 <- "B"
      a3 <- "C"
      b1 <- "D"
      b2 <- "E"
      b3 <- "F"
      c1 <- "G"
      c2 <- "H"
      c3 <- "I"

   repita
      escreval("DIGITE O NÚMERO CORRESPONDENTE PARA SELECIONAR A OPÇÃO DESEJADA:")

      escreval("1. JOGAR PARTIDA")
      escreval("2. ESCOLHER NOMES DOS JOGADORES")
      escreval("3. PLACAR ATUAL")
      escreval("4. ESTATÍSTICAS GERAIS")
      escreval("5. SAIR DO PROGRAMA")
      escreval
      //LAÇO DE RETIÇÃO PARA O MENU
      escreva("OPÇÃO: ")
      leia(menu)
         //LAÇO DE REPETIÇÃO PARA AS OPÇÕES DO MENU
        escolha(menu)
        caso 1

           escreval("JOGAR PARTIDA")
           escreval
           //SEM OS NOMES DOS JOGADORES,FORÇA CADASTRAR ANTES DA PARTIDA
           repita
           se ((jogX = "") e (jogO = "")) entao
                  escreval("DIGITE O NOME DOS JOGADORES PARA INICIAR A PARTIDA")
                  escreval("DIGITE O NOME DO 1º JOGADOR: ")
                    leia(jogX)
                     jogX <- Maiusc(jogX)
                    escreval("DIGITE O NOME DO 2º JOGADOR: ")
                    leia(jogO)
                     jogO <- Maiusc(jogO)
               fimse
           ate((jogX <> "") e (jogO <> ""))
           

           escreval(a1, "  |  ", a2, "  |  ", a3)
           escreval("-------------")
           escreval(b1, "  |  ", b2 ,"  |  ", b3)
           escreval("-------------")
           escreval(c1, "  |  ", c2, "  |  ", c3)
           escreval

           //Declaração de cont_jog
              cont_jog <- 1
              controle1 <- "X"
              controle2 <- "O"

           repita
            //LAÇO DE REPETIÇÃO DA PARTIDA
           //Declaração das váriaveis de turno

              se (cont_jog mod 2 = 0) entao
              turno <- "O"

              senao
              turno <- "X"

              fimse
           escreval("ESCOLHA A POSIÇÃO DESEJADA PARA :", turno)

           leia(posicao)

             posicao <- Maiusc(posicao)

           //Mantivemos dessa forma pra quando repetir for diferente de X ou O
           //caso já tenha sido preenchido em outra rodadada

                se ((posicao = a1) e (posicao <> controle1) e (posicao <> controle2)) entao
                a1 <- turno
                cont_jog <- cont_jog + 1
                senao
                   se ((posicao = a2) e (posicao <> controle1) e (posicao <> controle2)) entao
                   a2 <- turno
                   cont_jog <- cont_jog + 1
                   senao
                      se ((posicao = a3) e (posicao <> controle1) e (posicao <> controle2)) entao
                      a3 <- turno
                      cont_jog <- cont_jog + 1
                      senao
                         se ((posicao = b1) e (posicao <> controle1) e (posicao <> controle2)) entao
                         b1 <- turno
                         cont_jog <- cont_jog + 1
                         senao
                            se ((posicao = b2) e (posicao <> controle1) e (posicao <> controle2)) entao
                            b2 <- turno
                            cont_jog <- cont_jog + 1
                            senao
                               se ((posicao = b3) e (posicao <> controle1) e (posicao <> controle2)) entao
                               b3 <- turno
                               cont_jog <- cont_jog + 1
                               senao
                                  se ((posicao = c1) e (posicao <> controle1) e (posicao <> controle2)) entao
                                  c1 <- turno
                                  cont_jog <- cont_jog + 1
                                  senao
                                     se ((posicao = c2) e (posicao <> controle1) e (posicao <> controle2)) entao
                                     c2 <- turno
                                     cont_jog <- cont_jog + 1
                                     senao
                                        se ((posicao = c3) e (posicao <> controle1) e (posicao <> controle2)) entao
                                        c3 <- turno
                                        cont_jog <- cont_jog + 1
                                        senao
                                        escreval("Posição já preenchida ou inválida.")
                                        escreval
                                        
                                      fimse
                                    fimse
                                  fimse
                                fimse
                              fimse
                            fimse
                         fimse
                      fimse
                   fimse


             escreval(a1, "  |  ", a2, "  |  ", a3)
             escreval("-------------")
             escreval(b1, "  |  ", b2 ,"  |  ", b3)
             escreval("-------------")
             escreval(c1, "  |  ", c2, "  |  ", c3)

           //Irá repetir até o máximo de jogadas possíveis
           //Foi acrescentada as condições que interropem a partida se alguém ganhar

           ate((cont_jog > 9) ou ((a1 = "X") e (a2 = "X") e (a3 = "X")) ou ((b1 = "X") e (b2 = "X") e (b3 = "X")) ou ((c1 = "X") e (c2 = "X") e (c3 = "X")) ou ((a1 = "X") e (b2 = "X") e (c3 = "X")) ou ((a3 = "X") e (b2 = "X") e (c1 = "X")) ou ((a1 = "O") e (a2 = "O") e (a3 = "O")) ou ((b1 = "O") e (b2 = "O") e (b3 = "O")) ou ((c1 = "O") e (c2 = "O") e (c3 = "O")) ou ((a1 = "O") e (b2 = "O") e (c3 = "O")) ou ((a3 = "O") e (b2 = "O") e (c1 = "O")) ou ((a1 = "O") e (b1 = "O") e (c1 = "O")) ou ((a2 = "O") e (b2 = "O") e (c2 = "O")) ou ((a3 = "O") e (b3 = "O") e (c3 = "O")) ou ((a1 = "X") e (b1 = "X") e (c1 = "X")) ou ((a2 = "X") e (b2 = "X") e (c2 = "X")) ou ((a3 = "X") e (b3 = "X") e (c3 = "X")))


         //Possibilidades de vitória
         //Contador de partida para cada jogador e velha
         partidas <- partidas + 1
         partidaX <- partidaX + 1
         partidaO <- partidaO + 1
         
      se (((a1 = "X") e (a2 = "X") e (a3 = "X")) ou ((b1 = "X") e (b2 = "X") e (b3 = "X")) ou ((c1 = "X") e (c2 = "X") e (c3 = "X")) ou ((a1 = "X") e (b2 = "X") e (c3 = "X")) ou ((a3 = "X") e (b2 = "X") e (c1 = "X")) ou ((a1 = "X") e (b1 = "X") e (c1 = "X")) ou ((a2 = "X") e (b2 = "X") e (c2 = "X")) ou ((a3 = "X") e (b3 = "X") e (c3 = "X"))) entao
         escreval
         escreval("PARABÉNS JOGADOR(A) ", jogX," VOCÊ BRILHOU!")
           placarX <- placarX + 1
      senao
         se (((a1 = "O") e (a2 = "O") e (a3 = "O")) ou ((b1 = "O") e (b2 = "O") e (b3 = "O")) ou ((c1 = "O") e (c2 = "O") e (c3 = "O")) ou ((a1 = "O") e (b2 = "O") e (c3 = "O")) ou ((a3 = "O") e (b2 = "O") e (c1 = "O")) ou ((a1 = "O") e (b1 = "O") e (c1 = "O")) ou ((a2 = "O") e (b2 = "O") e (c2 = "O")) ou ((a3 = "O") e (b3 = "O") e (c3 = "O"))) entao
           escreval
           escreval("PARABÉNS JOGADOR(A) ", jogO," VOCÊ BRILHOU!")
             placarO <- placarO + 1
         senao
            escreval
            escreval("QUE PENA =( DEU VELHA E NINGUÉM GANHOU")
             velha <- velha + 1
         fimse
      fimse
      
        caso 2
          //OPÇÕES RENOMEAR JOGADORES
          se(cont_jog > 0) entao
          escreval("DESEJA RENOMEAR OS JOGADORES? S/N")
           leia(renomear)
           
           renomear <- Maiusc(renomear)
          //RENOMEAR AMBOS JOGADORES
           se (renomear = "S") entao
               escreval("DESEJA RENOMEAR AMBOS JOGADORES? S/N")
               leia(renomearXO)
                renomearXO <- Maiusc(renomearXO)
                 se (renomearXO = "S") entao
                   repita
                        escreva("DIGITE O NOME DO 1º JOGADOR: ")
                        leia(jogX)
                        jogX <- Maiusc(jogX)
                             partidaX <- 0
                             placarX <- 0
                        se(jogX = wingeral)entao
                        escreval("NOME DE JOGADOR JÁ UTILIZADO, TENTE UM DIFERENTE.")
                        fimse
                   ate(jogX <> wingeral)

                  repita
                   escreva("DIGITE O NOME DO 2º JOGADOR:" )
                   leia(jogO)
                    jogO <- Maiusc(jogO)
                       partidaO <- 0
                       placarO <- 0
                   se(jogO = wingeral)entao
                   escreval("NOME DE JOGADOR JÁ UTILIZADO, TENTE UM DIFERENTE.")
                   fimse
                  ate(jogO <> wingeral)

                senao

                 //RENOMEAR APENAS UM JOGADOR
                   se(renomearXO = "N") entao
                    escreval("DIGITE 1 PARA RENOMEAR O 1º JOGADOR")
                    escreval("DIGITE 2 PARA RENOMEAR O 2º JOGADOR")
                    leia(nome12)
                      escolha(nome12)
                        caso 1

                             repita
                                   escreva("DIGITE O NOME DO 1º JOGADOR: ")
                                   leia(jogX)
                                   jogX <- Maiusc(jogX)
                                   partidaX <- 0
                                   placarX <- 0
                                   se(jogX = wingeral)entao
                                   escreval("NOME DE JOGADOR JÁ UTILIZADO, TENTE UM DIFERENTE.")
                                   fimse
                             ate(jogX <> wingeral)

                        caso 2

                              repita
                                    escreva("DIGITE O NOME DO 2º JOGADOR:" )
                                    leia(jogO)
                                    jogO <- Maiusc(jogO)
                                    partidaO <- 0
                                    placarO <- 0
                                    se(jogO = wingeral)entao
                                    escreval("NOME DE JOGADOR JÁ UTILIZADO, TENTE UM DIFERENTE.")
                                    fimse
                              ate(jogO <> wingeral)

                      fimescolha
                     fimse
                 fimse
              fimse
         fimse

         //NOMEAR OS JOGADORES NO INICIO DO JOGO
           se(cont_jog = 0) entao
                       escreval("ESCOLHER NOMES DOS JOGADORES")
                       escreval
                        escreva("DIGITE O NOME DO 1º JOGADOR: ")
                        leia(jogX)
                        jogX <- Maiusc(jogX)
                        escreva("DIGITE O NOME DO 2º JOGADOR:" )
                        leia(jogO)
                        jogO <- Maiusc(jogO)
           fimse
        caso 3
           escreval("PLACAR ATUAL")
           
           escreval("PONTOS ", jogX, ": ", placarX)
           escreval("PONTOS ", jogO, ": ", placarO)
           escreval("VELHA: ", velha)

        caso 4
           escreval("ESTATÍSTICAS GERAIS")

           // maiorvalor = placarX ou placarO
           // se placaX ou placarO > maiorvalor
           // maiorvalor <- placarX ou placarO
           // partidasjog <- maiorvalor / total de partidas jogadas por X ou O
              se(placarX > maiorvalor)entao
                 maiorvalor <- placarX
                 wingeral <- jogX
                 wingeral <- Maiusc(wingeral)
                 partidasjog <- (maiorvalor/partidaX)*100
              senao
                se(placarO > maiorvalor)entao
                  maiorvalor <- placarO
                  wingeral <- jogO
                  wingeral <- Maiusc(wingeral)
                  partidasjog <- (maiorvalor/partidaO)*100
                fimse
              fimse
              
                taxadevitorias <- partidasjog

             //caso ainda não houver partidas jogadas
               se (cont_jog = 0) entao
                 escreval
                 escreval("AINDA NÃO FORAM JOGADAS PARTIDAS !!")
                 escreval
               senao
                   taxavelhas <- (velha/partidas)*100
             //caso já houve ao menos uma partida
                   escreval("MAIOR VENCEDOR É ", wingeral)
                   escreval("----------------------------")
                   escreval(maiorvalor," JOGOS VENCIDOS")
                   escreval("-----------------------------")
                   escreval("SUA TAXA DE VITORIAS FOI DE ",taxadevitorias," %")
                   escreval("-------------------------------")
                   escreval("TAXA DE JOGOS QUE DERAM VELHA: ",taxavelhas, " %")
                   escreval
              fimse
        fimescolha

  ate((menu >= 1) e (menu <= 5))

        //condição para sair do programa
         se(menu = 5)entao
             repita //Laço que garante digitar S/N  para variável "sair"
               escreval("TODOS OS DADOS DE JOGOS SERÃO PERDIDOS")
               escreval("VOCÊ TEM CERTEZA QUE DESEJA SAIR? S/N")
               leia(sair)
               sair <- Maiusc(sair)
                se (sair = "S") entao
                  escreval
                  escreval("O GRUPO AVANT-GARD AGRADECE SUA PARTICIPAÇÃO :) !")
                  escreval("VOLTE SEMPRE :) !!")
                  rodada <- "N"
                fimse
             ate ((sair = "S") ou (sair = "N"))
          fimse
          
         //condição para voltar ao menu inicial
          se(menu <> 5)entao
              repita
                 escreval("DESEJA VOLTAR AO MENU INICIAL? S/N ?")
                 leia(rodada)
                  rodada <- Maiusc(rodada)
                 se (rodada = "N") então
                  escreval
                  escreval("O GRUPO AVANT-GARD AGRADECE SUA PARTICIPAÇÃO :) !")
                  escreval("VOLTE SEMPRE :) !!")
                fimse
              ate ((rodada = "S") ou (rodada = "N"))
          fimse
 fimenquanto

Fimalgoritmo