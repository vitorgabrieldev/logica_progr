programa
{
	
	funcao inicio()
	{

		cadeia password

		escreva(" Password > ")

		leia(password)

		se (password == "marista")
			my()
		senao{
			
		}
		
	}

	funcao my()
	{
		escreva("  HELLO, WORD! XD \n")	

		cadeia name, secondname

			escreva("\n qual seu nome ? \n\n")
				leia(name)

			escreva("\n qual seu sobrenome ? \n\n")
				leia(secondname)

			escreva("\n\n Seja bem vindo senhor ", name + "\n\n")

			start()
		

	}

	funcao start(){
		cadeia open

			escreva("\n Start > ")

		leia(open)

			se (open == "calc") {
				calc()
			}

			se (open == "imc"){
				imc()
			}
	}

	funcao calc()
	{

	inteiro num1, num2
	
		escreva("\n\n Ditite um número: \n")

			leia(num1)

		escreva("     Digite outro número: \n")

			leia(num2)

		escreva
		(" a soma entre ",num1 + " e ",num2 + " é igual a: \n",  num1 + num2 )

		inteiro again

		escreva("\n\nDigite > 11 < para reset ou > 2 < para trocar de programa > ")

		leia(again)

		se (again == 1){
			calc()
		}
		
		se (again == 2){
			start()
		}
	}

	funcao imc()
	{
		escreva("Function imc...")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 32; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */