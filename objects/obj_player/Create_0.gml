//MOVIMENTAÇÃO
hspd = 0;				//horizontal
vspd = 0;				//vertical
vspd_min = -7;			//vertical mínimo
vspd_max = 7;			//vertical máximo
grv = 0.3;				//gravidade

move_dir = 0;			//direção
move_spd = 0;			//velocidade
move_spd_max = 3.0;		//velocidade máxima
acc = 0.3;				//aceleração
dcc = 0.3;				//desaceleração

jump_height = 6;		//altura do pulo
coyote_time = 0;		//pulo fora da plataforma
coyote_time_max = 10;	//pulo máximo fora da plataforma 

 x_scale = 1; // Escala x
 y_scale = 1; // Escala y

state = player_state_free;	//estado livre

global.objects_state = true; // Inicializa como 'true' para indicar obj_wall_normal ativo
toggle = false; // Variável para controlar a troca
global.toggle = false; // Variável para controlar a troca