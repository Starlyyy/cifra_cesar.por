programa
{
	inclua biblioteca Tipos --> ti
	inclua biblioteca Texto --> t

	const cadeia alfabeto[26] = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"}
	
	funcao inicio()
	{
		inteiro resposta, chave
		cadeia mensagem

		escreva("Olá, o que você gostaria de fazer?\n\n[1]Criptografar\n[2]Descriptografar\n[3]Descriptografar, mas sem a chave\n ")
		leia(resposta)
		limpa()

		se(resposta == 1){
			
			escreva("Qual será a mensagem (com letras maiúsculas) a criptografar e sua chave?\n")
			leia(mensagem, chave)
			criptografar(mensagem,chave)
			
		}
		senao se(resposta == 2){
			
			escreva("Qual será a mensagem (com letras maiúsculas) a descriptografar e sua chave?\n")
			leia(mensagem, chave)
			descriptografar(mensagem,chave)
		}
		senao se (resposta == 3){
			
			escreva("Qual será a mensagem (com letras maiúsculas) a descriptografar?\n")
			leia(mensagem)
			tentativa_e_erro(mensagem)
		}
		
	}

	funcao criptografar(cadeia texto, inteiro chave){
		
		inteiro numero_letras_frase
		cadeia letra = ""
		caracter letra_caracter = ' '
		inteiro posicao
		logico esta_no_alfabeto

		numero_letras_frase = t.numero_caracteres(texto)

		//para percorrer cada uma das letras da frase informada
		para(inteiro h=0; h < numero_letras_frase; h++){

			esta_no_alfabeto = falso
			
			letra_caracter = t.obter_caracter(texto, h)

			letra = ti.caracter_para_cadeia(letra_caracter)

			//para percorrer todo o alfabeto em busca da posição da letra
			para(inteiro i=0; i < 26; i++){
			
				se(letra == alfabeto[i]){

				posicao = i + chave
				posicao = posicao % 26
				
				escreva(alfabeto[posicao])
				esta_no_alfabeto = verdadeiro
				
				pare
				}
			}
			se(esta_no_alfabeto == falso){
				escreva(letra)
			}
			
		}	
	} //FIM DO CRIPTOGRAFAR




	funcao descriptografar(cadeia texto, inteiro chave){
		
	inteiro numero_letras_frase
	cadeia letra = ""
	caracter letra_caracter = ' '
	inteiro posicao
	logico esta_no_alfabeto

	numero_letras_frase = t.numero_caracteres(texto)

	//para percorrer cada uma das letras da frase informada
		para(inteiro h=0; h < numero_letras_frase; h++){

			esta_no_alfabeto = falso
			
			letra_caracter = t.obter_caracter(texto, h)

			letra = ti.caracter_para_cadeia(letra_caracter)

			//para percorrer todo o alfabeto em busca da posição da letra
			para(inteiro i=0; i < 26; i++){
			
				se(letra == alfabeto[i]){

				posicao = i - chave

				se(posicao < 0){
					posicao = posicao + 26
				}
				
				escreva(alfabeto[posicao])
				esta_no_alfabeto = verdadeiro
				
				pare
				}
			}
		se(esta_no_alfabeto == falso){
			escreva(letra)
		}
			
		}	
	}//FIM DO DESCRIPTOGRAFAR

	funcao tentativa_e_erro(cadeia texto){

		inteiro chave 
		inteiro numero_letras_frase
		cadeia letra = ""
		caracter letra_caracter = ' '
		inteiro posicao
		logico esta_no_alfabeto
	
		numero_letras_frase = t.numero_caracteres(texto)

		escreva("Essas são todas as possibilidades:\n")

		para(chave=26; chave !=0 ; chave--){


			//para percorrer cada uma das letras da frase informada
			para(inteiro h=0; h < numero_letras_frase; h++){
	
				esta_no_alfabeto = falso
				
				letra_caracter = t.obter_caracter(texto, h)
	
				letra = ti.caracter_para_cadeia(letra_caracter)

	
				//para percorrer todo o alfabeto em busca da posição da letra
				para(inteiro i=0; i < 26; i++){
				
					se(letra == alfabeto[i]){
	
					posicao = i - chave
	
					se(posicao < 0){
						posicao = posicao + 26
					}

					escreva(alfabeto[posicao])
					esta_no_alfabeto = verdadeiro

					
					pare
					}
				}
				se(esta_no_alfabeto == falso){
					escreva(letra)
				}
				
			}
			escreva("\n")

		}
		
	}//FIM DO TENTATIVA E ERRO

}
