vspd = move_dir * move_spd;

if(place_meeting(x,y+sign(vspd),obj_wall)){	//se colidir na parede inverte a movimentação
	move_dir*=-1;
} 

var c = (place_meeting(x,y + 1,obj_player)) or (place_meeting(x,y-1,obj_player))	//variável de colisão dos lados e em cima

if(c){
	with(obj_player){
		y+=other.vspd	//comando para o player seguir a plataforma
	}
}

y+=vspd;