event_inherited();

direction = point_direction(x, y, aimX, aimY);
image_angle = direction;

tick = 0;
stage = 0;

bullet = obj_tripleSpread_cast_bullet;

//networkPack_playSoundAll(sn_beep);

fire = function()
{
	instance_create_layer(x, y, "attacks", bullet, {caster: caster, x: x, y: y, direction: direction});
	instance_create_layer(x, y, "attacks", bullet, {caster: caster, x: x, y: y, direction: direction + 15});
	instance_create_layer(x, y, "attacks", bullet, {caster: caster, x: x, y: y, direction: direction - 15});
	networkPack_playSoundAll(sn_whoosh);
}