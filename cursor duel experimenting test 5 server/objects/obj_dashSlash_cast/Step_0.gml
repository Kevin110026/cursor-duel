
if(canHarm)
{
	canHarm = false;
	var collidPlayers = ds_list_create();
	instance_place_list(x, y, obj_playerChar, collidPlayers, false);
	for(var i = 0; i < ds_list_size(collidPlayers); i++)
	{
		var thePlayer = ds_list_find_value(collidPlayers, i);
		if(
			thePlayer.playerId != caster.playerId and
			thePlayer.iframe_iframe == 0)
		{
			thePlayer.hp_hp -= ability.damage;
			networkPack_playSoundAll(sn_Hurt);
		
			thePlayer.iframe_iframe = thePlayer.iframe_length;
		}
	}
}
else
{
	if(image_alpha <= 0)
		instance_destroy();
	image_alpha -= 1 / tps;
}