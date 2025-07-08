draw_set_color(c_white);

if(playerId == 0)
{
	draw_text(100, 100, string(hp_hp));
	draw_text(room_width / 2 - 15, 100, string(global.playerScore[0]));
}
else if(playerId == 1)
{
	draw_text(room_width - 100, 100, string(hp_hp));
	draw_text(room_width / 2 + 15, 100, string(global.playerScore[1]));
}