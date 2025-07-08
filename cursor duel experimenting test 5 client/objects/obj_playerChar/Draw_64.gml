draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


draw_text(x * display_get_gui_width() / room_width, y * display_get_gui_height() / room_height - 20, "hp: " + string(hp_hp));
draw_text(x * display_get_gui_width() / room_width, y * display_get_gui_height() / room_height - 40, "score: " + string(myScore));
draw_text(x * display_get_gui_width() / room_width, y * display_get_gui_height() / room_height - 60, name);

//if(keyboard_check_pressed(vk_f10))
//	show_debug_message(y * display_get_gui_height() / room_height - 40);

if(playerId == obj_player.playerId)
{
	var yy = display_get_gui_height() - 100;
	var xx1 = display_get_gui_width() / 2 - 192;
	var xx2 = display_get_gui_width() / 2 + 192;
	var k = energy_energy / energy_max;
	draw_set_color(c_yellow);
	draw_line_width(xx1, yy, xx1 * (1 - k) + xx2 * (k), yy, 6);
	
	var sep = 192 * 2 / energy_max;
	draw_set_color(c_black);
	for(var i = 1; i < energy_max; i++)
	{
		draw_line_width(xx1 + sep * i, yy - 6, xx1 + sep * i, yy + 6, 2);
	}
}
//draw_text(x * display_get_gui_width() / room_width, y * display_get_gui_height() / room_height - 60, "energy: " + string(energy_energy));

