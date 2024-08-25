global.view_target = obj_player;	//alvo da camera
window_set_size(VIEW_WIDHT * VIEW_SCALE, VIEW_HEIGHT * VIEW_SCALE);	//tamanho da janela
surface_resize(application_surface, VIEW_WIDHT * VIEW_SCALE, VIEW_HEIGHT * VIEW_SCALE);	//alterando a surface
alarm[0] = 1;	//alarme para centralizar janela