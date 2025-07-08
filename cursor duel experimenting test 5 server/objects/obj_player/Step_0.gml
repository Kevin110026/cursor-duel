var keys = ["1", "2", "3", "4", "5", "mb_left", "mb_right"];
for(var i = 0; i <array_length(keys); i++)
{
	var key = "key_"+keys[i];
	player_data_map[? key+"_pressed"] = (player_data_map[? key] and !player_data_map_last[? key]);
	player_data_map[? key+"_released"] = (!player_data_map[? key] and player_data_map_last[? key]);
}

ds_map_copy(player_data_map_last, player_data_map);




if(ds_list_find_index(obj_server.socket_list, socket) != playerId)
{
	playerId = ds_list_find_index(obj_server.socket_list, socket);
	ds_map_clear(myMap);
	myMap[? "playerId"] = playerId;
	bufferPack_player_modify(myBuffer, myMap);
	network_send_packet(socket, myBuffer, buffer_tell(myBuffer));
}