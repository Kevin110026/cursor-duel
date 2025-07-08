function bufferPack_instance_create(buffer, object_index, id){
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, package_type.game);
	buffer_write(buffer, buffer_u8, game_package.instance_create);
	buffer_write(buffer, buffer_u16, global.objects_to_enum[? object_index]);
	buffer_write(buffer, buffer_u32, id);
	return buffer;
}
function bufferPack_instance_destroy(buffer, id){
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, package_type.game);
	buffer_write(buffer, buffer_u8, game_package.instance_destroy);
	buffer_write(buffer, buffer_u32, id);
	return buffer;
}
function bufferPack_instance_modify(buffer, modified_variable_map){
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, package_type.game);
	buffer_write(buffer, buffer_u8, game_package.instance_modify);
	buffer_write(buffer, buffer_u32, id);
	buffer_write(buffer, buffer_string, json_encode(modified_variable_map));
	return buffer;
}
function bufferPack_player_modify(buffer, modified_variable_map){
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, package_type.player_data);
	buffer_write(buffer, buffer_string, json_encode(modified_variable_map));
	return buffer;
}
function networkPack_sendAll(buffer){
	for(var i = 0; i < ds_list_size(obj_server.socket_list); i++)
	{
		network_send_packet(obj_server.socket_list[| i], buffer, buffer_tell(buffer));
	}
}

function networkPack_send(buffer, clients){
	for(var i = 0; i < ds_list_size(clients); i++)
	{
		network_send_packet(clients[| i], buffer, buffer_tell(buffer));
	}
}

function bufferPack_playSound(buffer, sound, priority, loops, gain, offset, pitch){
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, package_type.game);
	buffer_write(buffer, buffer_u8, game_package.playSound);
	buffer_write(buffer, buffer_u8, global.sounds_to_enum[? sound]);
	buffer_write(buffer, buffer_u8, priority);
	buffer_write(buffer, buffer_bool, loops);
	buffer_write(buffer, buffer_f32, gain);
	buffer_write(buffer, buffer_f32, offset);
	buffer_write(buffer, buffer_f32, pitch);
	
	return buffer;
}

function networkPack_playSoundAll(sound, priority = 1, loops = false, gain = 1, offset = 0, pitch = 1){
	//audio_play_sound(snHurt, 1, false, 1, undefined, 0.5);
	var buffer = buffer_create(1024, buffer_fixed, 1);
	bufferPack_playSound(buffer, sound, priority, loops, gain, offset, pitch);
	networkPack_sendAll(buffer);
	buffer_delete(buffer);
}

function networkPack_playSound(client, sound, priority = 1, loops = false, gain = 1, offset = 0, pitch = 1){
	//audio_play_sound(snHurt, 1, false, 1, undefined, 0.5);
	var buffer = buffer_create(1024, buffer_fixed, 1);
	bufferPack_playSound(buffer, sound, priority, loops, gain, offset, pitch);
	networkPack_send(buffer, client);
	buffer_delete(buffer);
}