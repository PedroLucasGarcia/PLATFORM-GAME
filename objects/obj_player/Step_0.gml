//CONTROLES DE MOVIMENTAÇÃO
var key_left = keyboard_check(vk_left) || keyboard_check(ord("A"))
var key_right = keyboard_check(vk_right) || keyboard_check(ord("D"))
var key_up = keyboard_check(vk_up) || keyboard_check(ord("W"))
var key_down = keyboard_check(vk_down) || keyboard_check(ord("S"))
var key_jump = keyboard_check_pressed(vk_space)

//VARIÁVEL DE MOVIMENTAÇÃO
var move = key_right - key_left != 0;

if(move){
	move_dir = point_direction(0, 0, key_right - key_left, 0)
	move_spd = approach(move_spd, move_spd_max, acc);
}else{
	move_spd = approach(move_spd, 0, dcc);
}

hspd = lengthdir_x(move_spd, move_dir);

//APLICANDO GRAVIDADE E LIMITANDO A VELOCIDADE VERTICAL
vspd+=grv
vspd = clamp(vspd, vspd_min, vspd_max);
