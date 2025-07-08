if(!sprite_exists(sprite_index))
	return;
var spr = sprite_index;
var img = image_index;
var subimg = image_number;
var xx = display_get_gui_width() / 2 + (slot - 2) * 80;
var yy = display_get_gui_height() - 60;
//var xx = room_width / 2 + (slot - 2) * 80;
//var yy = room_height - 60;

shader_set(sh_ability_cooldown);
var gray_start, grayer;
if(charge_charge == charge_max)
	gray_start = 0;
else
	gray_start = cooldown_countdown / cooldown_cooldown; // 從 30% 的寬度開始灰階

show_debug_message(gray_start);

grayer = (charge_charge == 0);

var textureRange = sprite_get_uvs(spr, img);
shader_set_uniform_f(shader_get_uniform(sh_ability_cooldown, "gray_start"), gray_start);
shader_set_uniform_f(shader_get_uniform(sh_ability_cooldown, "grayer"), grayer);
shader_set_uniform_f(shader_get_uniform(sh_ability_cooldown, "u_texture_bounds"), textureRange[0], textureRange[1], textureRange[2], textureRange[3]);
draw_sprite_ext(spr, img, xx, yy, 0.5, 0.5, 0, c_white, 1);
shader_reset();


draw_set_halign(fa_center);
draw_set_valign(fa_middle);
for(var i = 0; i < charge_charge; i++)
{
	draw_circle_colour(xx + 12 * (i - (charge_charge-1)/2.0), yy + 40, 5, c_yellow, c_yellow, false);
}
