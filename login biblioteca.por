programa
{
	inclua biblioteca Util --> u

	cadeia nome[3], usuario [3], senha[3]
	inteiro tempo_i = 1, tempo_f = 2
	logico achou = falso
	
	funcao inicio()
	{
		cadeia cadastro
		
		escreva("Já possui cadastro (S/N)? ")
		leia(cadastro)
		limpa()
		se (cadastro == "S") {
			escreva ("Direcionando ao login... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
		limpa()
		login()	
		}
			
		senao se (cadastro == "N") {
			escreva ("Direcionando ao cadastro... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i, " ")
			u.aguarde(1000)
			tempo_i++
		}
			limpa()
			cadastroUsuario()
		}

		senao {
			escreva ("Opção inválida! Voltando ao início... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
		limpa()
		inicio()
		}
	}

	funcao cadastroUsuario() {

		cadeia dados, LogCad
		
		para (inteiro i = 0; i < 1; i++) {
			
		escreva ("Nome completo: ")
		leia (nome[i])
		escreva ("Nome de usuário: ")
		leia (usuario[i])
		escreva ("Senha: ")
		leia (senha[i])
		}
		limpa()
		para (inteiro posicao = 0; posicao < 1; posicao++) {
		escreva ("Verifique seus dados: ")
		escreva ("\nNome completo: "+nome[posicao]) 
		escreva ("\nNome de usuário: "+usuario[posicao])
		escreva ("\nSenha: "+senha[posicao])
		}
		escreva ("\nSeus dados estão corretos (S/N)? ")
		leia (dados)
		

		se (dados == "S") {
			escreva ("Ir ao login ou criar um novo cadastro (L/C respectivamente)? ")
			leia (LogCad)
			se (LogCad == "L") {
			
			escreva ("Direcionando ao login... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
		limpa()
		login()
		}	
		
		senao se (LogCad == "C") {
			escreva ("Direcionando ao cadastro... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i, " ")
			u.aguarde(1000)
			tempo_i++
		}
			limpa()
			novoCadastroUsuario()
		}
		senao {
			escreva ("Opção inválida! Voltando ao início... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
		limpa()
		inicio()
		}
		}
			
		senao se (dados == "N") {
			escreva ("Voltando ao início do cadastro... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
			limpa()
			cadastroUsuario()
		}

		senao {
			escreva ("Opção inválida! Voltando ao início... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
			limpa()
			cadastroUsuario()
		}
		
	}

	funcao novoCadastroUsuario() {

		cadeia dadosN, Log
		
		para (inteiro i = 1; i < 2; i++) {
			
		escreva ("Nome completo: ")
		leia (nome[i])
		escreva ("Nome de usuário: ")
		leia (usuario[i])
		escreva ("Senha: ")
		leia (senha[i])
		}
		limpa()
		para (inteiro posicao = 1; posicao < 2; posicao++) {
		escreva ("Verifique seus dados: ")
		escreva ("\nNome completo: "+nome[posicao]) 
		escreva ("\nNome de usuário: "+usuario[posicao])
		escreva ("\nSenha: "+senha[posicao])
		}
		escreva ("\nSeus dados estão corretos (S/N)? ")
		leia (dadosN)
		
		se (dadosN == "S") {
			
			escreva ("Direcionando ao login... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
		limpa()
		login()
		}	

		senao {
			escreva ("Até a próxima!\n")
		}
	}
		

	funcao login() {
		
		cadeia senhaUsuario, nomeUsuario, reiniciar
		
		escreva ("-----------------------\n")
		escreva("\t LOGIN\t\n")
		escreva ("-----------------------\n")
		escreva("NOME DE USUÁRIO: ")
		leia (nomeUsuario)
		escreva ("SENHA: ")
		leia (senhaUsuario)
		limpa()

		para (inteiro posicao = 0; posicao < 5; posicao++)
		{
			se (usuario[posicao] == nomeUsuario e senha[posicao] == senhaUsuario)
			{
				escreva ("Login efetuado!\n")
				achou = verdadeiro  
			}
		}
		
		se (nao achou) 
		{
			escreva ("Usuário ou senha inválidos!\n")
			escreva ("Tentar novamente (S/N)? ")
			leia (reiniciar)
			limpa()
			se (reiniciar == "S") {
			escreva ("Redirecionando ao login... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
		limpa()
		login()
		}
		senao se (reiniciar == "N") {
			
			escreva ("Até a próxima!\n")
		}

		senao {
			escreva ("Opção inválida! Voltando ao início... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
		limpa()
		inicio()
		}
		}
	}

	}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4148; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nome, 5, 8, 4}-{usuario, 5, 17, 7}-{senha, 5, 30, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */