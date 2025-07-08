/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

//x = caster.x;
//y = caster.y;

draw_sprite(spr_aim, 0, caster.aimX, caster.aimY)


var dx = caster.aimX - x;
var dy = caster.aimY - y;
var len = sqrt(sqr(dx) + sqr(dy));
dx *= 5000 / len;
dy *= 5000 / len;
draw_line_width_color(x, y, x + dx, y + dy, 1, c_red, c_red);