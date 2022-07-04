programa
{
	inclua biblioteca Calendario --> ca
	inclua biblioteca Texto --> tx
	inclua biblioteca Mouse --> m
	
	

	// bibliotecas import main
 
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Teclado --> t
	

	// position player 1
	inteiro position_x = 900
	inteiro position_y = 500

		// position cicle player 1

	
	// position player 2
	inteiro position_xx = 100
	inteiro position_yy = 100

	inteiro points_game = 0

	// tokens password
	inteiro pass_token = 0

	inteiro seconds = 10

	funcao inicio()
	{
		cadeia pass
		escreva("\n")
		escreva(" Password > ")
		leia(pass)
		se(pass == "marista")
		{
			escreva("Abrindo arquivos do game")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva("L")
			u.aguarde(100)
			escreva("O")
			u.aguarde(100)
			escreva("A")
			u.aguarde(100)
			escreva("D")
			u.aguarde(100)
			escreva("I")
			u.aguarde(100)
			escreva("N")
			u.aguarde(100)
			escreva("G")
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(100)
			escreva(".")
			u.aguarde(1500)
			game()
		} senao
		{

			pass_token++
			se(pass_token >= 5)
			{

				escreva("Muitas tentativas falhas | tente novamente mais tarde! \n")
				u.aguarde(1000)
				escreva("Aguarde " + seconds + " segundo")
				time_seconds()				
				
			} senao
			{
				limpa()
				inicio()
			}
		}
	}
	funcao time_seconds()
	{
		escreva("\n")
		seconds--
		escreva(seconds + "\n")
		u.aguarde(1000)
		seconds--
		escreva(seconds + "\n")
		u.aguarde(1000)
		seconds--
		escreva(seconds + "\n")
		u.aguarde(1000)
		seconds--
		escreva(seconds + "\n")
		u.aguarde(1000)
		seconds--
		escreva(seconds + "\n")
		u.aguarde(1000)
		seconds--
		escreva(seconds + "\n")
		u.aguarde(1000)
		seconds--
		escreva(seconds + "\n")
		u.aguarde(1000)
		seconds--
		escreva(seconds + "\n")
		u.aguarde(1000)
		seconds--
		escreva(seconds + "\n")
		u.aguarde(1000)
		seconds--
		escreva(seconds + "\n")
		limpa()
		inicio()
		seconds = 10
	}
	funcao game()
	{

		
		
			// boot grafico
			g.iniciar_modo_grafico(verdadeiro)
			g.definir_dimensoes_janela(1000, 900)
			enquanto(nao t.tecla_pressionada(t.TECLA_ESC))
			{
				//loop game
					display_game()
					control()
					display_points()
					txt()
					run_game()

					se(t.tecla_pressionada(t.TECLA_R))
					{
						reset()
					}
					
					g.renderizar()
			}

	}

	funcao txt()
	{
		se(t.tecla_pressionada(t.TECLA_P))
		{
			points_game++
		}
		g.definir_cor(g.COR_PRETO)
		g.desenhar_texto(160, 50, "    |    Pressione > esc < para sair")
	}

	// function run
	funcao run_game()
	{
		
	}

	//reset points
	funcao reset()
	{
		points_game = 0
	}
	
	funcao display_game()
	{
		
		// name display
		
		g.definir_titulo_janela("Display_Game")

		//display settings

		g.definir_cor(g.COR_BRANCO)
		g.limpar()

		// display reset
		g.definir_cor(g.COR_PRETO)
		g.desenhar_texto(550, 50, " |  Aperte > R < para resetar")

		// player > 1 < settings

		g.definir_cor(g.COR_PRETO)
		g.desenhar_elipse(position_x, position_y, 20, 20, verdadeiro)



		// player > 2 < settings 
		g.definir_cor(g.COR_VERMELHO)
		g.desenhar_elipse(position_xx, position_yy, 20, 20, verdadeiro)



		// display positions players
		g.definir_cor(g.COR_PRETO)
		g.desenhar_texto(20, 800,
		"position player 1: x=" + position_x + "     y=" + position_y +
		"     |      position player 2: x=  " 
		+
		position_xx + "    y=  " + position_yy )

	}
	funcao display_points()
	{
		// g.desenhar_retangulo(0, 0, 200, 100,falso,verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.definir_tamanho_texto(25.0)
		g.desenhar_texto(50, 50, "Points : " + points_game)
	}

	// controls game
		// insert game
	
	funcao control()
	{

		// movimento horizontal esquerdo
		
		se(t.tecla_pressionada(t.TECLA_A)){
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
						position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
			position_x--
		}

		// movimento horizontal direito 
		
		se(t.tecla_pressionada(t.TECLA_D)){
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
						position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
			position_x++
		}

		// movimento vertical para cima
		
		se(t.tecla_pressionada(t.TECLA_W)){
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
						position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
			position_y--
		}

		// movimento vertical para baixo
		
		se(t.tecla_pressionada(t.TECLA_S)){
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
						position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
			position_y++
		}

				//angulo horizontal
		se(position_x > 1000)
		{
			// -->
			position_x = 950
		}
		
		se(position_x < 0)
		{
			// <--
			position_x = 0
		}
		
		// angulo vertical
		se(position_y > 900)
		{
			// cima
			position_y = 900
		}
		se(position_y < 0)
		{
			// baixo
			position_y = 100
		}



		// move player 2
		se(t.tecla_pressionada(t.TECLA_SETA_ESQUERDA))
		{
			position_xx--
			position_xx--
			position_xx--
			position_xx--
			position_xx--
			position_xx--
			position_xx--
			position_xx--
			position_xx--
			position_xx--
			position_xx--
			position_xx--
			position_xx--
			position_xx--
			position_xx--
			position_xx--
			position_xx--
			position_xx--
			position_xx--
			position_xx--
			
		}

		se(t.tecla_pressionada(t.TECLA_SETA_DIREITA))
		{
			position_xx++
			position_xx++
			position_xx++
			position_xx++
			position_xx++
			position_xx++
			position_xx++
			position_xx++
			position_xx++
			position_xx++
			position_xx++
			position_xx++
			position_xx++
			position_xx++
			position_xx++
			position_xx++
			position_xx++
			position_xx++
			position_xx++
			position_xx++
			position_xx++
		}

		se(t.tecla_pressionada(t.TECLA_SETA_ACIMA))
		{
			position_yy--
			position_yy--
			position_yy--
			position_yy--
			position_yy--
			position_yy--
			position_yy--
			position_yy--
			position_yy--
			position_yy--
			position_yy--
			position_yy--
			position_yy--
			position_yy--
			position_yy--
			position_yy--
			position_yy--
			position_yy--
			position_yy--
			position_yy--
			position_yy--
			position_yy--
		}

		se(t.tecla_pressionada(t.TECLA_SETA_ABAIXO))
		{
			position_yy++
			position_yy++
			position_yy++
			position_yy++
			position_yy++
			position_yy++
			position_yy++
			position_yy++
			position_yy++
			position_yy++
			position_yy++
			position_yy++
			position_yy++
			position_yy++
			position_yy++
			position_yy++
			position_yy++
			position_yy++
			position_yy++
			position_yy++
			position_yy++
			position_yy++
		}

		// points system two

				//angulo horizontal
		se(position_xx > 1000)
		{
			// -->
			position_xx = 950
		}
		
		se(position_xx < 0)
		{
			// <--
			position_xx = 0
		}
		
		// angulo vertical
		se(position_yy > 900)
		{
			// cima
			position_yy = 890
		}
		se(position_yy < 0)
		{
			// baixo
			position_yy = 50
		}
		

	}
	funcao points_run()
	{
		inteiro second
		ca.segundo_atual()
		leia(second)
		escreva(second)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 951; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */