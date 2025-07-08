server_port = 4172;
client = network_create_socket(network_socket_tcp);
//connected = network_connect(client, "160.22.156.7:20920", server_port);
//connected = network_connect(client, "192.168.137.1", server_port);
server_ip = "127.0.0.1";
connected = -1;
client_buffer = buffer_create(1024, buffer_fixed, 1);
playerId = -1;
askConnectingId = -1;
startConnection = false;
player_name = "guest";
tryConnecting = function()
{
	while(true)
	{
		connected = network_connect(client, server_ip, server_port);
		if(connected >= 0)
		{
			show_message("connected to server!");
			break;
		}
		else
		{
			if(show_question("fail connecting to server...\n retry the ip?"))
				continue;
			else
				break;
		}
	}
}
askingConnecting = false;
askConnecting = function()
{
	if(!askingConnecting)
	{
		askingConnecting = true;
		askConnectingId = get_string_async("please enter the server ip", server_ip);
	}
}

//askConnecting();

//if(askConnecting())
//{
//	player_name_askID = get_string_async("your name", "guest");
//}
//else
//{
//	game_end();
//}
