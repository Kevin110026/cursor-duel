if(room == r_wait)
{
	if(obj_abilitySelection.readyCount == 2)
	{
		global.playerScore = [0, 0];
		
		var buffer = buffer_create(1024, buffer_fixed, 1);
		buffer_seek(buffer, buffer_seek_start, 0);
		buffer_write(buffer, buffer_u8, package_type.game_start);
		networkPack_sendAll(buffer);
		buffer_delete(buffer);
		
		room_goto(r_game);
	}
}
else if(room == r_game)
{
	if(ds_list_size(socket_list) < 2)
	{
		
		var buffer = buffer_create(1024, buffer_fixed, 1);
		buffer_seek(buffer, buffer_seek_start, 0);
		buffer_write(buffer, buffer_u8, package_type.game_end);
		networkPack_sendAll(buffer);
		buffer_delete(buffer);
		
		show_debug_message("goto room wait");
		
		room_goto(r_wait);
	}
}
