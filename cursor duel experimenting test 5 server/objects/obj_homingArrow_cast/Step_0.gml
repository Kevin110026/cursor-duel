age += 1;

if(age >= tps * 1)
{
	stage = 1;
	image_alpha = 1;
}
if(age >= tps * 4)
{
	stage = 2;
}

if(stage == 1)
{
	var collidPlayers = ds_list_create();
	instance_place_list(x, y, obj_playerChar, collidPlayers, false);
	for(var i = 0; i < ds_list_size(collidPlayers); i++)
	{
		var thePlayer = collidPlayers[| i];
		if(
			thePlayer.playerId != caster.playerId and
			thePlayer.iframe_iframe == 0)
		{
			thePlayer.hp_hp -= ability.damage;
			networkPack_playSoundAll(sn_Hurt, 1, false);
		
			thePlayer.iframe_iframe = thePlayer.iframe_length;
			
			instance_destroy();
		}
	}

	ds_list_destroy(collidPlayers);
}

if(stage == 0 or stage == 1)
{
	var tarDir = point_direction(x, y, target.x, target.y);
	var deltaDir = direction - tarDir;
	deltaDir = (deltaDir%360+360)%360;
	if(deltaDir > 0 and deltaDir <= 180)
		direction -= min(360/(2*tps), deltaDir);
	else
		direction += min(360/(2*tps), 360-deltaDir);
}
else if(stage == 2)
{
	if(x < 0 or x > room_width or y < 0 or y > room_height)
		instance_destroy();
}
image_angle = direction;