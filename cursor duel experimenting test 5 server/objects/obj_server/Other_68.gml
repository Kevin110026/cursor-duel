var type_event = ds_map_find_value(async_load, "type");

switch(type_event)
{
	case network_type_connect:
		var socket = ds_map_find_value(async_load, "socket");
		ds_list_add(socket_list, socket);
		ds_map_add(player_instances, socket, instance_create_layer(0, 0, "Instances", obj_player, {socket :socket}));
		break;
	
	case network_type_disconnect:
		var socket = ds_map_find_value(async_load, "socket");
		ds_list_delete(socket_list, ds_list_find_index(socket_list, socket));
		instance_destroy(ds_map_find_value(player_instances, socket));
		ds_map_delete(player_instances, socket);
		break;
		
	case network_type_data:
		break;
		
}