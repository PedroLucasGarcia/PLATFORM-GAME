function player_state_free() {
	#region CONTROLES DE MOVIMENTAÇÃO

	var key_left = keyboard_check(vk_left) || keyboard_check(ord("A"))
	var key_right = keyboard_check(vk_right) || keyboard_check(ord("D"))
	var key_up = keyboard_check(vk_up) || keyboard_check(ord("W"))
	var key_down = keyboard_check(vk_down) || keyboard_check(ord("S"))
	var key_jump = keyboard_check_pressed(vk_space)

	#endregion

	#region MOVIMENTAÇÃO

	var move = key_right - key_left != 0;	 //variável de movimento

	vspd+=grv	//aplicando gravidade
	vspd = clamp(vspd, vspd_min, vspd_max);	//limitando a velocidade vertical

	if(move){	//se minha movimentação for diferente de 0
		sprite_index = spr_player_run;	//sprite andando
		move_dir = point_direction(0, 0, key_right - key_left, 0)	//essa função retorna uma direção
		move_spd = approach(move_spd, move_spd_max, acc);	//aceleração
	}else{	//se minha movimentação for igual a 0
		sprite_index = spr_player;	//sprite parada
		move_spd = approach(move_spd, 0, dcc);	//desaceleração
	}

	hspd = lengthdir_x(move_spd, move_dir);	//move o x para uma direção e uma quantidade 

	if(hspd != 0) {	//se minha velocidade horizontal for diferente de 0
		x_scale = sign(hspd);	//vira a sprite para a direção que está andando
	}

	#endregion

	#region PULO

	var ground = place_meeting(x, y+1, obj_wall);	//essa variável verifica se o player está no chão

	if(ground) {	//se estou no chão
		coyote_time = coyote_time_max;	
	}else{	//se não estou no chão
		coyote_time--;
		/*if(vspd < 0){
			sprite_index = spr_player_jump			//sprite de pulo
		}else if(vspd > 0){
			sprite_index = spr_player_fall			//sprite de queda
		}
		*/
	}

	if(key_jump and coyote_time) {	//se apertei a tecla de pulo
		coyote_time = 0;
		vspd = 0;
		vspd-=jump_height;
	}

	#endregion
}