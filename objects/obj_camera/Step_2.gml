camera_set_view_size(view_camera[VIEW], VIEW_WIDHT, VIEW_HEIGHT);	//seta o tamanho da camera

if(instance_exists(global.view_target)){	//se o player existe posso seguir o player
	var x_to = global.view_target.x - VIEW_WIDHT / 2; //para onde o x vai
	var y_to = global.view_target.y - VIEW_HEIGHT / 2; //para onde o y vai
	
	var c_x = camera_get_view_x(view_camera[VIEW]); //pega a posição x da câmera e faz com que ela chegue ao x_to a uma velocidade
	var c_y = camera_get_view_y(view_camera[VIEW]); //pega a posição y da câmera e faz com que ela chegue ao y_to a uma velocidade

	var n_x = lerp(c_x, x_to, VIEW_SPD); //novo x, já aplicando o lerp e a velocidade
	var n_y = lerp(c_y, y_to, VIEW_SPD); //novo y, já aplicando o lerp e a velocidade

	camera_set_view_pos(view_camera[VIEW], n_x, n_y); //posição da câmera
}