if(ds_map_find_value(async_load, "type") != network_type_data)
	return;


if(room == r_game)
	handleNetworkBuffer(ds_map_find_value(async_load, "buffer"));
else
{
	var cpy_buffer = buffer_create(1024, buffer_fixed, 1);
	buffer_copy(ds_map_find_value(async_load, "buffer"), 0, 1024, cpy_buffer, 0);
	ds_list_add(bufferList, cpy_buffer);
}