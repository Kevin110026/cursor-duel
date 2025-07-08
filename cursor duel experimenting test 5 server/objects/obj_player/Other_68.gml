if(ds_map_find_value(async_load, "type") != network_type_data)
	return;

var buffer = ds_map_find_value(async_load, "buffer");
buffer_seek(buffer, buffer_seek_start, 0);
	
var _socket = async_load[? "id"];
if(_socket != socket)
	return;

switch(buffer_read(buffer, buffer_u8))
{
	case package_type.player_input:
		var changed_variable_map = json_decode(buffer_read(buffer, buffer_string));
		var theKeys = ds_map_keys_to_array(changed_variable_map);
		var theVals = ds_map_values_to_array(changed_variable_map);
		for(var i = 0; i < array_length(theKeys); i++)
			player_data_map[? theKeys[i]] = theVals[i];
}
	