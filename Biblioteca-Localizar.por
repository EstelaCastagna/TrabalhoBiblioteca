programa
{
	
	inclua biblioteca Util --> u
	
	inteiro tempo_i = 1, tempo_f = 2
	inteiro codigo
	
	funcao inicio()
	{
		codigoBarras()
		pesquisa()
}

funcao codigoBarras() {
		escreva("\t\t    LISTA DE CÓDIGOS")
		escreva("\n---------------------------------------------------------\n") 
		escreva("Livros de Gestão                    0000001 até 2000000\n")
		escreva("Livros de Automação Industrial      2000001 até 3000000\n")
		escreva("Livros de Tecnologia da Informação  3000001 até 4000000\n")
		escreva("Livros de Matemática                4000001 até 5500000\n")
		escreva("Livros de Mecânica                  5500001 até 6250000\n")
		escreva("Livros de Elétrica                  6250001 até 7500000\n")
		escreva("---------------------------------------------------------\n")
	}

funcao pesquisa() {
		
		escreva("Insira o código de barras do livro (7 dígitos): ")
		leia(codigo)
		limpa()

		se (codigo >= 0000001 e codigo <= 2000000){
			LocalizarCodigoGestao()
		}
		senao se (codigo >= 2000001 e codigo <= 3000000){
			LocalizarCodigoAutomacao()
		}
		senao se (codigo >=3000001 e codigo <= 4000000){
			LocalizarCodigoTI()
		}
		senao se (codigo >=4000001 e codigo <= 5500000){
			LocalizarCodigoMatematica()
		}
		senao se (codigo >=5500001 e codigo <= 6250000){
			LocalizarCodigoMecanica()
		}
		senao se (codigo >=6250001 e codigo <= 7500000){
			LocalizarCodigoEletrica()
		}
}

funcao voltaPesquisa(){

		cadeia novaP
		
		escreva("Deseja fazer uma nova pesquisa (S/N)? ")
		leia(novaP)
		limpa()
		se (novaP == "S") {
			escreva ("Voltando... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
		limpa()
		pesquisa()	
		}
			
		senao se (novaP == "N") {
			escreva ("Até a próxima!\n ")
		}

		senao {
			escreva ("Opção inválida! Voltando ao início... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
		limpa()
		pesquisa()
		}
}

funcao LocalizarCodigoGestao() {
	
		cadeia materias[] = {"Contabilidade","Gerenciamento de P.","Empreendorismo","Rotinas Adm.","Gestão de Pessoas","Gestão de Produção","Gestão de Estoque","Marketing"}
		cadeia sessao[] = {"657","658","658","658","658","658-3","658-5","658-7","658-8"}
		
		
		se (codigo <= 0250000){
			para (inteiro posicao = 0; posicao < 1; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 0250001 e codigo <=0500000){
			para (inteiro posicao = 1; posicao < 2; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 0500001 e codigo <=0750000){
			para (inteiro posicao = 2; posicao < 3; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 0750001 e codigo <=1000000){
			para (inteiro posicao = 3; posicao < 4; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 1000001 e codigo <=1250000){
			para (inteiro posicao = 4; posicao < 5; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 1250001 e codigo <=1500000){
			para (inteiro posicao = 5; posicao < 6; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 1500001 e codigo <=1750000){
			para (inteiro posicao = 6; posicao < 7; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 1750001 e codigo <=2000000){
			para (inteiro posicao = 7; posicao < 8; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
	}

	funcao LocalizarCodigoAutomacao() {
		
		cadeia materias[] = {"Instrumentação","Automação e Controle","Construção Civil","Desenho Tecnico"}
		cadeia sessao[] = {"681-2","681-5","669","744"}
		
		
		se (codigo >= 2000001 e codigo <=2250000){
			para (inteiro posicao = 0; posicao < 1; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 2250001 e codigo <=2500000){
			para (inteiro posicao = 1; posicao < 2; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 2500001 e codigo <=2750000){
			para (inteiro posicao = 2; posicao < 3; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 2750001 e codigo <=3000000){
			para (inteiro posicao = 3; posicao < 4; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
	}

	funcao LocalizarCodigoTI() {
		
		cadeia materias[] = {"Instrumentação","Automação e Controle","Construção Civil","Desenho Técnico"}
		cadeia sessao[] = {"681-2","681-5","669","744"}
		
		
		se (codigo >= 3000001 e codigo <=3250000){
			para (inteiro posicao = 0; posicao < 1; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 3250001 e codigo <=3500000){
			para (inteiro posicao = 1; posicao < 2; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 3500001 e codigo <=3750000){
			para (inteiro posicao = 2; posicao < 3; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 3750001 e codigo <=4000000){
			para (inteiro posicao = 3; posicao < 4; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
	}

	funcao LocalizarCodigoMatematica() {
		
		cadeia materias[] = {"Matemática","Física","Química","Geologia","Biologia"}
		cadeia sessao[] = {"51","53","54","551","573"}
		
		
		se (codigo >= 4000001 e codigo <=4250000){
			para (inteiro posicao = 0; posicao < 1; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 4250001 e codigo <=4500000){
			para (inteiro posicao = 1; posicao < 2; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 4500001 e codigo <=4750000){
			para (inteiro posicao = 2; posicao < 3; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 4750001 e codigo <=5000000){
			para (inteiro posicao = 3; posicao < 4; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 5000001 e codigo <=5500000){
			para (inteiro posicao = 4; posicao < 5; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		
	}

	funcao LocalizarCodigoMecanica() {
		
		cadeia materias[] = {"Mecânica Material","Engenharia Mecânica","Máquinas Térmicas"}
		cadeia sessao[] = {"620-1","621","621-1"}
		
		
		se (codigo >= 5500001 e codigo <=5750000){
			para (inteiro posicao = 0; posicao < 1; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 5750001 e codigo <=6000000){
			para (inteiro posicao = 1; posicao < 2; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 6200001 e codigo <=6250000){
			para (inteiro posicao = 2; posicao < 3; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
	}

	funcao LocalizarCodigoEletrica() {
		
		cadeia materias[] = {"Engenharia","Circuitos Elétricos","Medição Elétrica","Instalações Elétricas","Dispotivos Eletrônicos"}
		cadeia sessao[] = {"621-3","621-3-049","621-31","621-316-17","621-38"}
		
		
		se (codigo >= 6250001 e codigo <=6500000){
			para (inteiro posicao = 0; posicao < 1; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 6500001 e codigo <=6750000){
			para (inteiro posicao = 1; posicao < 2; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 6750001 e codigo <=7000000){
			para (inteiro posicao = 2; posicao < 3; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 7000001 e codigo <=7250000){
			para (inteiro posicao = 3; posicao < 4; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
		senao se (codigo >= 7250001 e codigo <=7500000){
			para (inteiro posicao = 4; posicao < 5; posicao++)
		{
			escreva("Livro de ", materias[posicao]," disponível na sessão ",sessao[posicao], ".\n")
		}
		voltaPesquisa()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 199; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */