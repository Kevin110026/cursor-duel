bufferPack_instance_destroy(myBuffer, id);
for(var i = 0; i < ds_list_size(clients); i++)
{
	network_send_packet(clients[| i], myBuffer, buffer_tell(myBuffer));
}

if(clients != obj_server.socket_list)
	ds_list_destroy(clients);