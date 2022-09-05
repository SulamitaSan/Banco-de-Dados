Algoritmo "Agencia WorldTurismo"

Var

   numero : vetor[1..5] de inteiro
   NOME   : vetor[1..5] de Caracter
   SEXO : vetor[1..5] de Caracter
   NASCIMENTO  : vetor[1..5] de caracter
   ENDERECO:  vetor[1..5] de caracter
   DESTINO: vetor [1..5] de caracter
   indice : inteiro
   L,XL :  LOGICO
   OPCAO : Caracter



FUNÇÃO PESQUISA(XV: INTEIRO) : LOGICO
VAR II : INTEIRO
   A : LOGICO
INICIO
   A := FALSO
   PARA II DE 1 ATÉ 5 FAÇA
      SE numero[ii] = xv ENTÃO
         A := VERDADEIRO
         interrompa
      FIMSE
   FIMPARA
   RETORNE A
FIMFUNÇÃO


PROCEDIMENTO CADASTRO
VAR II  : INTEIRO
   L  :  LOGICO
   xnum : INTEIRO
   xnom : caracter
   xidd : caracter
   xend : caracter
   xsex : caracter
INICIO
   limpaTela
   Escreval(" Cadastro ")
   SE indice <= 5 ENTÃO
      xnum := 0
      Xnom := ""
      xidd := ""
      xsex := ""
      xend := ""
      L := VERDADEIRO
      ENQUANTO L FAÇA
         ESCREVA("Crie um código",Indice," : ")
         LEIA(xnum)
         L := PESQUISA(xnum)
      FIMENQUANTO
      ESCREVA("Digite o seu nome: ")
      LEIA(xnom)
      ESCREVA("Digite sua idade: ")
      LEIA(xidd)
      ESCREVA("Qual o seu sexo: ")
      LEIA(xsex)

      Numero[indice] := xnum
      Nome[indice]   := xnom
      nascimento[indice]  := xidd
      indice := indice + 1
   FIMSE

   ESCREVAL(" ")
   ESCREVA("Pressione o Enter ")
   LEIA(XL)

FIMPROCEDIMENTO

PROCEDIMENTO CONSULTAR
VAR II : INTEIRO
   L  :  LOGICO
   xnum : INTEIRO
   xnom : caracter
   xidd : caracter

INICIO
   limpaTela

   Escreval(" Consulta ")

   PARA II DE 1 ATÉ 5 FAÇA
      ESCREVAL("[",II,"] -> ",NUMERO[II]," ",NOME[II]," ",NASCIMENTO[II])
   FIMPARA

   ESCREVAL(" ")
   ESCREVA("Pressione o Enter ")
   LEIA(XL)

FIMPROCEDIMENTO

PROCEDIMENTO DESTINO
VAR  II : INTEIRO
   L  :  LOGICO
   xnum : INTEIRO
   Destino : caracter
   xdes : caracter


INICIO
   limpaTela
   Escreval(" Destino ")

   L := VERDADEIRO
   ENQUANTO L FAÇA
      ESCREVA("Digite seu código ",II," : ")
      LEIA(xnum)
      L := PESQUISA(xnum)
   FIMENQUANTO

   ESCREVAL("Qual seu destino: ",Destino[ii])

   Destino[ii] := xdes

   ESCREVAL(" ")
   ESCREVA("Pressione o Enter ")
   LEIA(XL)

FIMPROCEDIMENTO


PROCEDIMENTO ALTERAR
VAR  II : INTEIRO
   L  :  LOGICO
   xnum : INTEIRO
   xnom : caracter
   xidd : caracter

INICIO
   limpaTela
   Escreval(" Alterar ")
   xnum := 0
   Xnom := ""
   xidd := ""
   L := Falso
   ENQUANTO L FAÇA
      ESCREVA("Digite seu codigo : ")
      LEIA(xnum)
      L := PESQUISA(xnum)
   FIMENQUANTO

   ESCREVAL("Digite o nome que voce quer alterar : ",xnom[ii])
   ESCREVAL("DIGITE a Idade: ",xidd[ii])

   ESCREVA("DIGITE o Nome : ")
   LEIA(xnom)
   ESCREVA("DIGITE a Idade: ")
   LEIA(xidd)

   Numero[II] := xnum
   Nome[ii]   := xnom
   Idade[ii]  := xidd

   ESCREVAL(" ")
   ESCREVA
   ("Pressione o Enter ")
   LEIA(YL)

FIMPROCEDIMENTO

Inicio

   indice := 1
   L := VERDADEIRO
   OPCAO := ""
   ENQUANTO L FAÇA
      LIMPATELA
      EscrevaL("======================================")
      EscrevaL("~~~~~~Olá, somos a World Turismo~~~~~~")
      EscrevaL("======================================")
      EscrevaL(" ~~~~~~~~Menu~~~~~~ ")
      EscrevaL("======================================")
      EscrevaL("1- Cadastro")
      EscrevaL("2- Consulta")
      EscrevaL("3- Destino")
      EscrevaL("4- Alterar")
      EscrevaL("5- Sair")
      EscrevaL(" ")
      Escreva("Digite a opção:")
      Leia(opcao)
      ESCOLHA OPCAO FAÇA
      CASO "1"
         CADASTRO
      CASO "2"
         CONSULTAR
      CASO "3"
         DESTINO
      CASO "4"
         ALTERAR
      CASO "5"
         L := FALSO
      OUTROCASO
         EscrevaL("Opção inválida!!!")
         EscrevaL(" ")
         Escreva("Por favor pressione o Enter")
         Leia(XL)
      FIMESCOLHA
   FIMENQUANTO
Fimalgoritmo