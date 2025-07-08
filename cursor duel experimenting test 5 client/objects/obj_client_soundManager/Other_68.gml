if(async_load[? "type"] != network_type_data)
	return;
var buffer = async_load[? "buffer"];

buffer_seek(buffer, buffer_seek_start, 0);

if(buffer_read(buffer, buffer_u8) != package_type.game)
	return;
if(buffer_read(buffer, buffer_u8) != game_package.playSound)
	return;
	
var sound = global.sounds[buffer_read(buffer, buffer_u8)];
var priority = buffer_read(buffer, buffer_u8);
var loops = buffer_read(buffer, buffer_bool);
var gain = buffer_read(buffer, buffer_f32);
var offset = buffer_read(buffer, buffer_f32);
var pitch = buffer_read(buffer, buffer_f32);

audio_play_sound(sound, priority, loops, gain, offset, pitch);