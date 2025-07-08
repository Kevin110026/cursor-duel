if(x < 0 or y < 0)
	return;
	
if(variable_instance_exists(id, "playerId") and !is_undefined(playerId) and playerId != obj_player.playerId)
	shader_set(sh_red);


draw_self();

shader_reset();
