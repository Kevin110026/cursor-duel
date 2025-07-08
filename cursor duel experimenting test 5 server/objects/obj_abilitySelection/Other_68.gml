if(ds_map_find_value(async_load, "type") != network_type_data)
	return;

var buffer = ds_map_find_value(async_load, "buffer");
buffer_seek(buffer, buffer_seek_start, 0);
	
var socket = async_load[? "id"];

switch(buffer_read(buffer, buffer_u8))
{
	case package_type.playerChar_ability:
	
		var playerInstance = obj_server.player_instances[? socket];
		var attribute_instance = playerChar_attribute_instances[ds_list_find_index(obj_server.socket_list, socket)];
		
		if(!playerInstance.ready)
			readyCount++;
		playerInstance.ready = true;
		var playerId = ds_list_find_index(obj_server.socket_list, socket);
		attribute_instance.ability_1 = global.abilities[buffer_read(buffer, buffer_u8)];
		attribute_instance.ability_2 = global.abilities[buffer_read(buffer, buffer_u8)];
		attribute_instance.ability_3 = global.abilities[buffer_read(buffer, buffer_u8)];
		attribute_instance.ability_4 = global.abilities[buffer_read(buffer, buffer_u8)];
		attribute_instance.ability_5 = global.abilities[buffer_read(buffer, buffer_u8)];
		
}
	