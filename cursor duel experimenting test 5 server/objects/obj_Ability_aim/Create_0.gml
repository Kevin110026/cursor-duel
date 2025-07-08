/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

clients = ds_list_create();
ds_list_add(clients, caster.socket);
event_inherited();

x = caster.x;
y = caster.y;
aimX = caster.aimX;
aimY = caster.aimY;

lastVariable[? "x"] = undefined;
lastVariable[? "y"] = undefined;
lastVariable[? "aimX"] = undefined;
lastVariable[? "aimY"] = undefined;
lastVariable[? "image_angle"] = undefined;
lastVariable[? "image_index"] = undefined;
lastVariable[? "image_alpha"] = undefined;
lastVariable[? "caster"] = undefined;
lastVariable[? "playerId"] = undefined;