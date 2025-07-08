// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_enum_init(){
	#macro tps 60
	enum package_type
	{
		game,
		ping,
		player_input,
		player_data,
		playerChar_ability,
		game_start,
		game_end,
	}
	
	enum game_package
	{
		instance_create,
		instance_modify,
		instance_destroy,
		playSound,
	}
	
	global.transfered_objects = [
		obj_playerChar, obj_tar,
		obj_Ability, obj_Ability_aim, obj_Ability_cast,
		obj_Lazer, obj_Lazer_aim, obj_Lazer_cast,
		obj_tripleSpread, obj_tripleSpread_aim, obj_tripleSpread_cast, obj_tripleSpread_cast_bullet,
		obj_dashSlash, obj_dashSlash_aim, obj_dashSlash_cast,
		obj_homingArrow, obj_homingArrow_aim, obj_homingArrow_cast,
		obj_speedRail, obj_speedRail_aim, obj_speedRail_cast,
	];
	global.objects_to_enum = ds_map_create();
	for(var i = 0; i < array_length(global.transfered_objects); i++)
	{
		ds_map_add(global.objects_to_enum, global.transfered_objects[i], i);
	}
	
	global.abilities = [
		obj_abilitySelection_ability,
		obj_abilitySelection_lazer,
		obj_abilitySelection_tripleSpread,
		obj_abilitySelection_dashSlash,
		obj_abilitySelection_homingArrow,
		obj_abilitySelection_speedRail,
	];
	global.abilities_to_enum = ds_map_create();
	for(var i = 0; i < array_length(global.abilities); i++)
	{
		ds_map_add(global.abilities_to_enum, global.abilities[i], i);
	}
	
	
	global.sounds = [
		sn_Hurt,
		sn_lazerCharge,
		sn_lazerFire,
		sn_whoosh,
		sn_beep,
		sn_buff,
		sn_calcelBuff,
	];
	
	global.sounds_to_enum = ds_map_create();
	for(var i = 0; i < array_length(global.sounds); i++)
	{
		ds_map_add(global.sounds_to_enum, global.sounds[i], i);
	}
}