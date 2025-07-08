var i_d = ds_map_find_value(async_load, "id");
if (i_d == askConnectingId)
{
    if (ds_map_find_value(async_load, "status"))
    {
		server_ip = ds_map_find_value(async_load, "result");
		while(true)
		{
			connected = network_connect(client, server_ip, server_port);
			if(connected >= 0)
			{
				show_message("connected to server!");
				askingConnecting = false;
				return;
			}
			else if(!show_question("fail connecting to server...\n retry the ip?"))
				break;
		}
		if(show_question("try another ip?"))
		{
			askingConnecting = false;
			askConnecting();
		}
    }
	else
		askingConnecting = false;
}
else if(i_d == player_name_askID)
{
    if (ds_map_find_value(async_load, "status"))
    {
        player_name = ds_map_find_value(async_load, "result");
    }
}