/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
event_inherited();
x = caster.x;
y = caster.y;
aimX = caster.aimX;
aimY = caster.aimY;
playerId = caster.playerId;



#region client stuff

//	list the variable to share with clients

lastVariable[? "x"] = undefined;
lastVariable[? "y"] = undefined;
lastVariable[? "aimX"] = undefined;
lastVariable[? "aimY"] = undefined;
lastVariable[? "image_angle"] = undefined;
lastVariable[? "image_index"] = undefined;
lastVariable[? "image_alpha"] = undefined;
lastVariable[? "playerId"] = undefined;

#endregion