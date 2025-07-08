/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

// Inherit the parent event
event_inherited();

lastVariable[? "image_xscale"] = undefined;
lastVariable[? "image_yscale"] = undefined;

image_scale = 4;
image_xscale = image_scale;
image_yscale = image_scale;

caster.x += lengthdir_x(32 * image_scale, caster.direction);
caster.y += lengthdir_y(32 * image_scale, caster.direction);
direction = point_direction(0, 0, caster.velX, caster.velY);
image_angle = direction;
canHarm = true;
networkPack_playSoundAll(sn_whoosh, 1, false, 1, 0, 2);