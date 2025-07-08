/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

// Inherit the parent event
event_inherited();

direction = point_direction(x, y, aimX, aimY);
image_angle = direction;

stage = 0;
age = 0;
soundStage = 0;
image_alpha = 0.5;

target = global.playerChars[1 - caster.playerId];

networkPack_playSoundAll(sn_whoosh, 1, false, 1, 0, 1.5);