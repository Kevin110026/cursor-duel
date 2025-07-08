if(keyboard_check_pressed(vk_f11))
{
	window_set_fullscreen(!window_get_fullscreen());
	
}

if(keyboard_check_pressed(vk_escape))
	game_end();
	
if(keyboard_check_pressed(vk_f12))
{
	//	idk why restarting the game doesn't disconnect the socket
	if (os_is_network_connected())
	{
		network_destroy(obj_client.client);
	}
	game_restart();
}
//if(keyboard_check_pressed(vk_f10))
//{
//	show_debug_message(string(window_get_width()) + " " + string(window_get_height()));
//	show_debug_message(camera_get_view_y(view_camera[0]));
//}