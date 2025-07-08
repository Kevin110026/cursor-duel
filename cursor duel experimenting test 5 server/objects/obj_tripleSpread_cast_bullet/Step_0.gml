if(x < 0 or x > room_width or y < 0 or y > room_height)
	instance_destroy();

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
		networkPack_playSoundAll(sn_Hurt, 1, false);
		
		thePlayer.iframe_iframe = thePlayer.iframe_length;
	}
}

ds_list_destroy(collidPlayers);
