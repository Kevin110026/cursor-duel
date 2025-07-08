if(room == r_game)
{
	while(ds_list_size(bufferList))
	{
		handleNetworkBuffer(bufferList[| 0]);
		buffer_delete(bufferList[| 0])
		ds_list_delete(bufferList, 0);
	}
}
if(room == r_wait)
{
	ds_map_clear(instances);
}