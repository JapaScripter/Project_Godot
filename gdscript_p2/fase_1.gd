extends Node2D

#var condicao = 0
#var vetor = Vector2(10,15)
#var vetor = Vector2.ZERO
#var vetor = Vector2.UP
#var vetor = Vector2.DOWN
#var vetor = Vector2.LEFT
#var vetor = Vector2.RIGHT
#var vetor = Vector3(0,0,0)
#var arr = [10,20,30,40,50,60,70,80,90,100]
#var nomes = ["Felipe","Cásio","Júlio", 10]
#var matriz = [
	#["item", 0, 10],
	#["espada", 1, 4],
	#["escudo", 12]
#]

#var i = 0
#var linha = 0
#var coluna = 0

#var dic = [
	#{"item":"capa"},
	#{"arma":"espada claymore"},
	#{
		#"pocao":"recovery",
		#"magic":"recovery100%"
	#},
	#{
		#"ataque" = [10,20,1,29,30]
	#}
#]

#var guest = "Louis"
#var hp = 0.5
#var mp = 0.3

@onready var inimigo = get_node("enemy")


# Called when the node enters the scene tree for the first time.
func _ready():
	var label = get_node("label")
	label.text = str(inimigo.global_position) + inimigo.name
	#print('teste')
	#for i in range (0,10,2):
		#print(i)
	#pass
	
	#while(condicao < 10):
		#print(condicao)
		#condicao += 1
		
		#print(vetor.x)
		#print(vetor.y)
		#print(vetor)
		
	#for i in arr:
		#print(i)
		#
	#for i in nomes:
		#print(i)
	
	#print(matriz[0][2])
	
	#while(i < len(matriz[1])):
		#print(matriz[i])
		#i += 1
		
		#while(linha < len(matriz)):
			#print(linha)
			#print(matriz[linha])
			#print(linha+1,"º linha")
			#
			#coluna = 0 #reseta a coluna
			#while(coluna < len(matriz[linha])):
				#print(matriz[linha][coluna])
				#coluna += 1 #incrementa uma coluna
			#linha += 1 #incrementa uma lina
			
	#print(dic[3]["ataque"])
	
	#escrita()
	#nome("Júlio")
	#player(guest,hp,mp)
	#somar(10,23)
	
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#func escrita():
	#print("olá eu sou uma função sem retorno")
	#print("olá eu sou uma função sem retorno")
	#print("olá eu sou uma função sem retorno")
	#
#func nome(nome):
	#print("Meu nome é Eliseu, vc não sabe nem eu" + nome)

#func player(guest,hp,mp):
	#print("Seu nome é: ", guest," Sua vida é: ", hp," Sua magia é ", mp)
#
#func somar(valor1, valor2):
	#var resultado = valor1 + valor2
	#return resultado
