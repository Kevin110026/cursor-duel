if(!ds_exists(clients, ds_type_list))
	clients = obj_server.socket_list;

myBuffer = buffer_create(1024, buffer_fixed, 1);
bufferPack_instance_create(myBuffer, object_index, id);
for(var i = 0; i < ds_list_size(clients); i++)
{
	network_send_packet(clients[| i], myBuffer, buffer_tell(myBuffer));
}

lastVariable = ds_map_create();
changed_variable_map = ds_map_create();
