/// @description Insert description here
// You can write your code in this editor

if (cabeca.hspeed == 0) {
	if (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left))
	{
		marcarRoteador(global.ESQUERDA)
	}

	if (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right))
	{
		marcarRoteador(global.DIREITA)
	}
}

if (cabeca.vspeed == 0) {
	if (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up))
	{
		marcarRoteador(global.CIMA)
	}

	if (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down))
	{
		marcarRoteador(global.BAIXO)
	}
}