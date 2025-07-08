var type_event = ds_map_find_value(async_load, "type");

switch(type_event)
{
	case network_type_connect:
		//room_goto(r_game);
		break;
	
	case network_type_disconnect:
		//	meh, this code doesn't work
		room_goto(r_wait);
		if(askConnecting())
		{
			room_goto(r_game);
			player_name = get_string("your name", "guest");
		}
		else
		{
			game_end();
		}
		break;
		
	case network_type_data:
		
		var buffer = async_load[? "buffer"];
		buffer_seek(buffer, buffer_seek_start, 0);
		switch(buffer_read(buffer, buffer_u8))
		{
			case package_type.game_start:
				room_goto(r_game);
				show_debug_message("go to room game");
				break;
			case package_type.game_end:
				room_goto(r_wait);
				show_debug_message("go to room wait");
				break;
		}
		break;
}