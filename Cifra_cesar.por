programa
{
	inclua biblioteca Tipos --> ti
	inclua biblioteca Texto --> t

	const cadeia alfabeto[26] = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"}
	
	funcao inicio()
	{
		descriptografar("EUDVLO HX WH DPR ",3)
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

}
