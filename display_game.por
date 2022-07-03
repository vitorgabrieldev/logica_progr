programa
{
	inclua biblioteca Mouse --> m
	
	inclua biblioteca PortugolStudio --> p
	
	

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
	
	funcao inicio()
	{
			// boot grafico
			g.iniciar_modo_grafico(verdadeiro)
			g.definir_dimensoes_janela(1190, 940)
			enquanto(verdadeiro)
			{
				//loop game
					display_game()
					control()
					display_points()
					points_run()
					run_game()

					se(t.tecla_pressionada(t.TECLA_R))
					{
						reset()
					}
					
					g.renderizar()
			}

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
		g.definir_tamanho_texto(20.0)
		g.desenhar_texto(500, 50, "Aperte > R < para resetar pontuação")

		// player > 1 < settings
		
				// position circle yellow
				inteiro position_xz = position_x - 15
				inteiro position_yz = position_y - 15

		g.definir_cor(g.COR_AMARELO)
		g.desenhar_elipse(position_xz, position_yz, 50, 50, verdadeiro)

		g.definir_cor(g.COR_PRETO)
		g.desenhar_elipse(position_x, position_y, 20, 20, verdadeiro)



		// player > 2 < settings 
		g.definir_cor(g.COR_VERMELHO)
		g.desenhar_elipse(position_xx, position_yy, 20, 20, verdadeiro)

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
		se(position_x > 1200)
		{
			// -->
			position_x = 400
			points_game++
		}
		
		se(position_x < 0)
		{
			// <--
			position_x = 400
			points_game++
		}
		
		// angulo vertical
		se(position_y > 950)
		{
			// cima
			position_y = 400
			points_game++
		}
		se(position_y < 0)
		{
			// baixo
			position_y = 300
			points_game++
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
			position_xx = 400
		}
		
		se(position_xx < 0)
		{
			// <--
			position_xx = 400
		}
		
		// angulo vertical
		se(position_yy > 800)
		{
			// cima
			position_yy = 400
		}
		se(position_yy < 0)
		{
			// baixo
			position_yy = 300
		}
		

	}
	funcao points_run()
	{
		se(position_x == position_xx)
		{
			points_game++
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 752; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */