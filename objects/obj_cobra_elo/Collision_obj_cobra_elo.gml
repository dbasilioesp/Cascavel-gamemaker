/// @description Insert description here
// You can write your code in this editor

if (self.ordem > other.ordem) {
	if (self.ordem != other.ordem + 1){
		game_restart()
	}
} else {
	if (self.ordem != other.ordem - 1){
		game_restart()
	}
}