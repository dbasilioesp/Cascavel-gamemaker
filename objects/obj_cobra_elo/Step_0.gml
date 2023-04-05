/// @description Insert description here
// You can write your code in this editor

#region Walljump

var metade = (self.sprite_width / 2)

if (x > room_width && direction == global.DIREITA) {
	x = -(metade)
}

if (x < 0 && direction == global.ESQUERDA) {
	x = room_width + (metade)
}

if (y < -self.sprite_width && direction == global.CIMA) {
	y = room_height + (metade)
}

if (y > room_height && direction == global.BAIXO) {
	y = -(metade)
}

#endregion

if (cauda) {
	image_blend = c_red
} else {
	image_blend = blendAntigo 
}
