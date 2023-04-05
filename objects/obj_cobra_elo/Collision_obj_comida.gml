/// @description Insert description here
// You can write your code in this editor

instance_destroy(other)
obj_controlador.cresceAcauda()

nx = random_range(10, room_width - 10)
ny = random_range(10, room_height - 10)
instance_create_layer(nx, ny, "Instances", obj_comida)