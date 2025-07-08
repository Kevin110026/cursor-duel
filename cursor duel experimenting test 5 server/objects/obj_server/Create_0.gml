port = 4172;
max_client = 2;

network_create_server(network_socket_tcp, port, max_client);

server_buffer =	buffer_create(1024, buffer_fixed, 1);

socket_list = ds_list_create();

player_instances = ds_map_create();