if(room == r_wait and !reseted)
{
	reseted = true
	
	readyCount = 0;
	for (var i = 0; i < instance_number(obj_player); ++i;)
		obj_player.ready = false;
}
else if(room == r_game)
{
	reseted = false;
}