name = obj_client.player_name;

player_data_map[? "mouse_x"] = mouse_x;
player_data_map[? "mouse_y"] = mouse_y;
player_data_map[? "key_mb_right"] = mouse_check_button(mb_right);
player_data_map[? "key_mb_left"] = mouse_check_button(mb_left);
player_data_map[? "key_1"] = keyboard_check(ord("1"));
player_data_map[? "key_2"] = keyboard_check(ord("2"));
player_data_map[? "key_3"] = keyboard_check(ord("3"));
player_data_map[? "key_4"] = keyboard_check(ord("4"));
player_data_map[? "key_5"] = keyboard_check(ord("5"));
player_data_map[? "name"] = name;

//show_debug_message(player_data_map[? "key_1_released"]);

ds_map_clear(changed_player_data);
var theKeys = ds_map_keys_to_array(player_data_map);
for(var i = 0; i < array_length(theKeys); i++)
{
	if(player_data_map_last[? theKeys[i]] != player_data_map[? theKeys[i]])
	{
		player_data_map_last[? theKeys[i]] = player_data_map[? theKeys[i]];
		changed_player_data[? theKeys[i]] = player_data_map[? theKeys[i]];
		//show_debug_message(string(current_time) + "-" + theKeys[i] + ": " + string(player_data_map[? theKeys[i]]));
	}
}
//if(ds_map_size(changed_player_data))
//	show_debug_message("");

if(ds_map_size(changed_player_data) == 0)
	return;


buffer_seek(player_data_buffer, buffer_seek_start, 0);
buffer_write(player_data_buffer, buffer_u8, package_type.player_input);
buffer_write(player_data_buffer, buffer_string, json_encode(changed_player_data));
network_send_packet(obj_client.client, player_data_buffer, buffer_tell(player_data_buffer));