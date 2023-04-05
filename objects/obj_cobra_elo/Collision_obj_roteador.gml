/// @description Insert description here
// You can write your code in this editor

if (other.direcao == global.CIMA || other.direcao == global.BAIXO) {
	if (self.direction == global.DIREITA) {
		self.x = other.posX + -(self.sprite_width / 2)
	}
}

if (other.direcao == global.ESQUERDA || other.direcao == global.DIREITA) {
	if (self.direction == global.BAIXO) {
		self.y = other.posY + -(self.sprite_width / 2)
	}
}

self.direction = other.direcao