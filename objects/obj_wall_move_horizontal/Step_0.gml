hspd = move_dir * move_spd;

if(place_meeting(x+sign(hspd),y,obj_wall)){	//se colidir na parede inverte a movimentação
	move_dir*=-1;
} 

var c = (place_meeting(x+sign(hspd),y,obj_player)) or (place_meeting(x,y-1,obj_player))	//variável de colisão dos lados e em cima

if(c){	
	with(obj_player){
		if(!place_meeting(x+other.hspd,y,obj_wall)){	//comando para o player seguir a plataforma
			x+=other.hspd;
		}
	}
}

x+=hspd;