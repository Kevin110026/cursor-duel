/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

event_inherited();


socket = obj_server.socket_list[| playerId];
player = obj_server.player_instances[? socket];
input_map = player.player_data_map;


function ck_key(key)
{
	return input_map[? "key_" + key];
}
function ck_key_pressed(key)
{
	return input_map[? "key_" + key + "_pressed"];
}
function ck_key_released(key)
{
	return input_map[? "key_" + key + "_released"];
}

if(playerId == 0)
{
	x = room_width / 5;
	y = room_height / 2;
}
else if(playerId == 1)
{
	x = room_width - room_width / 5;
	y = room_height / 2;
}

// check how to do this to client later
//if(playerId == 0)
//	window_mouse_set(x, y);

input = undefined;
key_up = false;
key_down = false;
key_left = false;
key_right = false;
key_horizontal = key_right - key_left;
key_vertical = key_down - key_up;
key_ability_1_assign = "1";
key_ability_2_assign = "2";
key_ability_3_assign = "3";
key_ability_4_assign = "4";
key_ability_5_assign = "5";
key_abilities_assign = [key_ability_1_assign, key_ability_2_assign, key_ability_3_assign, key_ability_4_assign, key_ability_5_assign];

playerChar_attribute_instance = obj_abilitySelection.playerChar_attribute_instances[playerId];
ability_1 = playerChar_attribute_instance.ability_1;
ability_2 = playerChar_attribute_instance.ability_2;
ability_3 = playerChar_attribute_instance.ability_3;
ability_4 = playerChar_attribute_instance.ability_4;
ability_5 = playerChar_attribute_instance.ability_5;

ability_1_instance = instance_create_layer(0, 0, "abilities", ability_1, {caster: id, slot: 0});
ability_2_instance = instance_create_layer(0, 0, "abilities", ability_2, {caster: id, slot: 1});
ability_3_instance = instance_create_layer(0, 0, "abilities", ability_3, {caster: id, slot: 2});
ability_4_instance = instance_create_layer(0, 0, "abilities", ability_4, {caster: id, slot: 3});
ability_5_instance = instance_create_layer(0, 0, "abilities", ability_5, {caster: id, slot: 4});
abilities_instance = [ability_1_instance, ability_2_instance, ability_3_instance, ability_4_instance, ability_5_instance];

		


tarX = x;
tarY = y;
//tarSprite = layer_sprite_create(layer_get_id("movements"), tarX, tarY, sTar);
tarSprite = instance_create_layer(tarX, tarY, layer_get_id("movements"), obj_tar, {playerChar: id});

aimX = x;
aimY = y;
aimingMod = false;

hp_hp = hp_max;
energy_energy = 0;
energy_regain = instance_create_depth(0, 0, 0, obj_stat, {base: 1});

Acc = instance_create_depth(0, 0, 0, obj_stat, {base: 0.5});
maxVel = instance_create_depth(0, 0, 0, obj_stat, {base: 20});
velX = 0;
velY = 0;

dmgBoost = instance_create_depth(0, 0, 0, obj_stat, {base: 1});

iframe_length = 40;
iframe_iframe = 0;

myScore = global.playerScore[playerId];

name = player.name;


//	list the variable to share with clients
lastVariable[? "x"] = undefined;
lastVariable[? "y"] = undefined;
lastVariable[? "tarX"] = undefined;
lastVariable[? "tarY"] = undefined;
lastVariable[? "aimX"] = undefined;
lastVariable[? "aimY"] = undefined;
lastVariable[? "aimingMod"] = undefined;
lastVariable[? "image_angle"] = undefined;
lastVariable[? "image_index"] = undefined;
lastVariable[? "image_alpha"] = undefined;
lastVariable[? "hp_max"] = undefined;
lastVariable[? "hp_hp"] = undefined;
lastVariable[? "myScore"] = undefined;
lastVariable[? "playerId"] = undefined;
lastVariable[? "name"] = undefined;
lastVariable[? "energy_max"] = undefined;
lastVariable[? "energy_energy"] = undefined;