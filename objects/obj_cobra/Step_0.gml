/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


var _left, _right, _up, _down;

_left = keyboard_check_pressed(ord("A"))
_right = keyboard_check_pressed(ord("D"))
_up = keyboard_check_pressed(ord("W"))
_down = keyboard_check_pressed(ord("S"))

if (array_length(movimentos) < 2)
{
	if (_left) array_push(movimentos, MOVES.LEFT);
	if (_up) array_push(movimentos, MOVES.UP); 
	if (_right) array_push(movimentos, MOVES.RIGHT);
	if (_down) array_push(movimentos, MOVES.DOWN);
}

if (timer == 40)
{
	// Move todos elos para o próximo ponto antes de mover a cabeça
	for (var _i = array_length(pontos_x) - 1; _i > 0; _i--)
	{
		pontos_x[_i] = pontos_x[_i - 1]
		pontos_y[_i] = pontos_y[_i - 1]
	}

	if (array_length(movimentos) > 0)
	{
		var _movimento = movimentos[0]
		var _move_left = _movimento == MOVES.LEFT
		var _move_right = _movimento == MOVES.RIGHT
		var _move_up = _movimento == MOVES.UP
		var _move_down = _movimento == MOVES.DOWN
	
		if ((_move_left || _move_right) && velh == 0)
		{
			velv = 0
			if (_move_left) velh = -1
			if (_move_right) velh = 1
		}
	
		if ((_move_up || _move_down) && velv == 0)
		{
			velh = 0
			if (_move_up) velv = -1
			if (_move_down) velv = 1
		}
	
		if (array_length(movimentos) > 1) movimentos = [movimentos[1]]
		else movimentos = []
	}

	
	// Move a cabeça
	pontos_x[0] += step * velh
	pontos_y[0] += step * velv
	
	timer = 0
}

timer++

show_debug_message(pontos_y)