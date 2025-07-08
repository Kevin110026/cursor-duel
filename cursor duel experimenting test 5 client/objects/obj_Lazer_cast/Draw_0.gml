/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


event_inherited();

if(aimX < 0 or aimY < 0)
	return;


draw_sprite(spr_aim, 0, aimX, aimY);


var dx = aimX - x;
var dy = aimY - y;
var len = sqrt(sqr(dx) + sqr(dy));
dx *= 5000 / len;
dy *= 5000 / len;
var color;
if(variable_instance_exists(id, "playerId") and !is_undefined(playerId) and playerId != obj_player.playerId)
	color = c_red;
else
	color = c_aqua;
draw_line_width_color(x, y, x + dx, y + dy, 2, color, color);