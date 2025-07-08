/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


stage = (image_index >= 6);
if(stage == 1)
{
	var collidPlayers = ds_list_create();
	instance_place_list(x, y, obj_playerChar, collidPlayers, false);
	for(var i = 0; i < ds_list_size(collidPlayers); i++)
	{
		var thePlayer = ds_list_find_value(collidPlayers, i);
		if(
			thePlayer.playerId != caster.playerId and
			thePlayer.iframe_iframe == 0)
		{
			//	if the player got hit directly, the damage is higher
			if(6 <= image_index and image_index < 7)
			{
				thePlayer.hp_hp -= ability.damage_burst;
				networkPack_playSoundAll(sn_Hurt, 1, false, 1, undefined, 0.5);
				//audio_play_sound(sn_Hurt, 1, false, 1, undefined, 0.5);
			}
			else
			{
				thePlayer.hp_hp -= ability.damage_trace;
				networkPack_playSoundAll(sn_Hurt, 1, false);
			}
			
			thePlayer.iframe_iframe = thePlayer.iframe_length;
		}
	}
	ds_list_destroy(collidPlayers);
}


if(destroyAtNextFrame)
	instance_destroy();



if(image_index >= 5)
	image_speed = 1.33;
if(image_index >= image_number - 2)
	image_alpha = 0.66;
else if(image_index >= image_number - 1)
	image_alpha = 0.33;
if(image_index >= image_number - 1)
	destroyAtNextFrame = true;


if(soundStage == 0)
{
	soundStage = 1;
	networkPack_playSoundAll(sn_lazerCharge, 1, false, 0.3, 0.2);
}
else if(soundStage == 1 and image_index >= 5)
{
	soundStage = 2;
	networkPack_playSoundAll(sn_lazerFire, 1, false, 0.3);
}