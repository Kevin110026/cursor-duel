ds_map_clear(changed_variable_map);
var names = ds_map_keys_to_array(lastVariable);
for(var i = 0; i < array_length(names); i++)
{
	if(variable_instance_get(self, names[i]) != lastVariable[? names[i]])
	{
		ds_map_add(changed_variable_map, names[i], variable_instance_get(self, names[i]));
		ds_map_set(lastVariable, names[i], variable_instance_get(self, names[i]));
	}
}

if(ds_map_size(changed_variable_map) == 0)
	return;
	
bufferPack_instance_modify(myBuffer, changed_variable_map);
for(var i = 0; i < ds_list_size(clients); i++)
{
	network_send_packet(clients[| i], myBuffer, buffer_tell(myBuffer));
}
