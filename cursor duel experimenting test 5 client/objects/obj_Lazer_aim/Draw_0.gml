/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if(is_undefined(caster) or caster == 0)
	return;

var local_caster = obj_client_instanceManager.instances[? caster];
if(is_undefined(local_caster) or
	!variable_instance_exists(local_caster, "aimX") or is_undefined(local_caster.aimX) or 
	!variable_instance_exists(local_caster, "aimY") or is_undefined(local_caster.aimY))
	return;

draw_sprite(spr_aim, 0, local_caster.aimX, local_caster.aimY);


var dx = local_caster.aimX - x;
var dy = local_caster.aimY - y;
var len = sqrt(sqr(dx) + sqr(dy));
dx *= 5000 / len;
dy *= 5000 / len;
draw_line_width_color(x, y, x + dx, y + dy, 2, c_aqua, c_aqua);