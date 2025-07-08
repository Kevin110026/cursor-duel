  /// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

key_up = keyboard_check(ord("W")) or keyboard_check(vk_up);
key_down = keyboard_check(ord("S")) or keyboard_check(vk_down);
key_left = keyboard_check(ord("A")) or keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) or keyboard_check(vk_right);

key_horizontal = key_right - key_left;
key_vertical = key_down - key_up;

energy_energy = min(energy_max, energy_energy + energy_regain.value/tps);

aimX = input_map[? "mouse_x"];
aimY = input_map[? "mouse_y"];

function isAimMode()
{
	for(var i=0; i<5; i++)
	{
		if(ck_key(key_abilities_assign[i]))
			return true;
	}
	return false;
}


for(var i=0; i<5; i++)
{
	//	ahh sht don't know how to send "pressed" & "release" message to server
	if(ck_key_pressed(key_abilities_assign[i]))
	{
		abilities_instance[i].aim(id);
	}
	else if(ck_key_released(key_abilities_assign[i]))
	{
		abilities_instance[i].stopAim();
	}
}

aimingMod = isAimMode();

if(!aimingMod)
{
	if(!is_undefined(input_map[? "mouse_x"]))
		tarX = input_map[? "mouse_x"];
	if(!is_undefined(input_map[? "mouse_y"]))
		tarY = input_map[? "mouse_y"];
}

