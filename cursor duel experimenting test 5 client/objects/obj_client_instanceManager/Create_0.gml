instances = ds_map_create();
bufferList = ds_list_create();
handleNetworkBuffer = function(buffer)
{
	buffer_seek(buffer, buffer_seek_start, 0);
	var msgid = buffer_read(buffer, buffer_u8);

	if(msgid != package_type.game)
		return;
	
	msgid = buffer_read(buffer, buffer_u8);
	if(msgid == game_package.instance_create)
	{
		var serverObject = global.transfered_objects[@ buffer_read(buffer, buffer_u16)];
		var serverInstanceId = buffer_read(buffer, buffer_u32);
		ds_map_add(instances, serverInstanceId, instance_create_layer(-1, -1, "Instances", serverObject));
	}
	else if(msgid == game_package.instance_destroy)
	{
		var serverInstanceId = buffer_read(buffer, buffer_u32);
		instance_destroy(instances[? serverInstanceId]);
		ds_map_delete(instances, serverInstanceId);
	}
	else if(msgid == game_package.instance_modify)
	{
		var serverInstanceId = buffer_read(buffer, buffer_u32);
		var changed_variable_map = json_decode(buffer_read(buffer, buffer_string));
		var theInstance = instances[? serverInstanceId];
		if(is_undefined(theInstance))
			return;
		var theKeys = ds_map_keys_to_array(changed_variable_map);
		var theVals = ds_map_values_to_array(changed_variable_map);
		for(var i = 0; i < array_length(theKeys); i++)
			variable_instance_set(theInstance, theKeys[i], theVals[i]);
		ds_map_destroy(changed_variable_map);
	}
};