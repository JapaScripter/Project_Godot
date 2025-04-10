extends Node2D
#var nome = "Yuri"
#var idade = 27
#var altura = 1.70
#var peso = 82.5
#var habilitado = true
#const SOBRENOME = "game2d"
#const SPEED = 100
#var valor1 = 15
#var valor2 = 3
#var resultado = valor1 + valor2
#var direcao = 1
#var direcao = 10
#var level = 1
#var exp = 0
#var s1 = 10000
#var s2 = 5000
#var salario = s1 > s2
#var vida = 3
#var item = "espada"
#var ataque = true
#var condicao1 = true
#var condicao2 = false
#var fruta = "uva"
var time = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Está começando o jogo!")
	#print("Nome = " + nome)
	#print("Idade = " + str(idade))
	#print("Altura = ", altura)
	#print("Peso = ", peso)
	#print("Habilitado = " + str(habilitado))
	#print("\nNome = " + nome + "\nIdade = " + str(idade))
	
	#nome = "Mauricio"
	#print(nome)
	#SOBRENOME = "Mauricio"
	#print(SOBRENOME)
	#print(SPEED * 10)
	
	#print("Resultado = " + str(resultado))
	
	#print("Direção = ", direcao * -1)
	
	#print(direcao)
	#direcao = direcao + 5
	#print(direcao)
	
	
	#print("Sua experiência é: ", exp, " Seu nível é: ", level)
	#exp = exp + 10
	#print("Você ganho +10 de experiência: ", exp, " Seu nível é: ", level)
	#exp += 10
	#print("Você ganho +10 de experiência: ", exp, " Seu nível é: ", level)
	#exp = exp + 10
	#print("Você ganho +10 de experiência: ", exp, " Seu nível é: ", level)
	#level = level + 1
	#exp = 0
	#print("Experiência zerada: ", exp, " Você subiu para o nível: ", level)
	
	#print("Salario é maior? " + str(salario))
	
	#if(vida > 0):
		#print("Está vivo com " + str(vida) + " de vida!")
	#else:
		#print("Game Over")
	
	#if(item == "espada"):
		#print("Espada equipada!")
	#elif(item == "lanca"):
		#print("Lança equipada!")
	#elif(item == "arco"):
		#print("Arco equipado!")
	#else:
		#print("Está desarmado!")

	#if(item == "espada"):
		#print("Espada equipada!")
		#if(ataque == true):
			#print("Atacando com a espada!")
		#else:
			#print("Não está atacando!")
	#else:
		#print("Está desarmado!")
	
	#if(condicao1 == true and condicao2 == true): #redundante colocar == true o if já verifica sozinho true e false
		#print("Tudo é verdadeiro")
	#else:
		#print("Nem tudo é verdadeiro")
		#
	#if(condicao1 and condicao2):
		#print("Tudo é verdadeiro")
	#else:
		#print("Nem tudo é verdadeiro")
		
	#if(condicao1 or condicao2):  #redundante colocar == true o if já verifica sozinho true e false
		#print("Tudo é verdadeiro")
	#else:
		#print("Nem tudo é verdadeiro")
	
	#if(not(condicao1 or condicao2)):  #redundante colocar == true o if já verifica sozinho true e false
		#print("Tudo é verdadeiro")
	#else:
		#print("Nem tudo é verdadeiro")
		#
	#if(!(condicao1 or condicao2)):  #redundante colocar == true o if já verifica sozinho true e false
		#print("Tudo é verdadeiro")
	#else:
		#print("Nem tudo é verdadeiro")
	
	#match(fruta):
		#"uva":
			#print("É uma uva!")
		#"banana":
			#print("É uma banana!")
		#"maça":
			#print("É uma maça!")
		#"laranja":
			#print("É uma laranja!")
		#_:
			#print("Não é fruta!")
	
		
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print(delta)
	time = time + delta
	if(time <= 2):
		print("Bom dia!")
	else:
		print("Boa tarde!")
		
		
