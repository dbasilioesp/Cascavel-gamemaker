/// @description Insert description here
// You can write your code in this editor

//elos = 1

alarm[0] = room_speed

cabeca = instance_find(obj_cobra_elo,  0)
ultimoElo = pointer_null

global.CIMA = 90
global.BAIXO = 270
global.ESQUERDA = 180
global.DIREITA = 0

function criaPonto(x, y, direcao, valor, atras = false){
	var ponto = { 
		x: x,
		y: y
	}
	if(direcao == global.CIMA || direcao == global.BAIXO){
		var inversao = direcao == global.CIMA ? -1 : 1;
		inversao = atras ? inversao * -1 : inversao;
		
		ponto.y = ponto.y + (valor * inversao)
	}
	
	if(direcao == global.ESQUERDA || direcao == global.DIREITA){
		var inversao = direcao == global.ESQUERDA ? -1 : 1;
		inversao = atras ? inversao * -1 : inversao;
		
		ponto.x = ponto.x + (valor * inversao)
	}
	
	return ponto
}

function marcarRoteador(praOndeVai) {
	var espacamento = cabeca.sprite_width
	var ponto = criaPonto(cabeca.x, cabeca.y, cabeca.direction, espacamento)
	
	var roteador = instance_create_layer(ponto.x, ponto.y, "Instances", obj_roteador);
	roteador.direcao = praOndeVai
	roteador.posX = ponto.x
	roteador.posY = ponto.y
}

function cresceAcauda(){
	if (ultimoElo == pointer_null) {
		ultimoElo = pointer_null
	
		for (var i = 0; i < instance_number(obj_cobra_elo); i++){
			var j = instance_find(obj_cobra_elo, i)
			if (j.cauda == true){
				ultimoElo = j
			}
		}
	}
	
	
	if (ultimoElo) {
		ultimoElo.cauda = false
		var direcao = ultimoElo.direction
		var ordem = ultimoElo.ordem
	
		var ponto = criaPonto(ultimoElo.x, ultimoElo.y, ultimoElo.direction, 64, true)
	
		ultimoElo = instance_create_layer(ponto.x, ponto.y, "Instances", obj_cobra_elo)
		ultimoElo.cauda = true
		ultimoElo.ordem = ordem + 1
		ultimoElo.direction = direcao
	}
}
